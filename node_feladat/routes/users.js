import express from "express";
import { dbQuery, dbRun } from "../database.js";

const router = express.Router();

router.get("/", async (req, res, next) => {
    try {
        const users = await dbQuery("SELECT * FROM users;");
        res.status(200).json(users);
    } catch (err) {
        next(err);
    }
});

router.get("/:email", async (req, res, next) => {
    try {
        const [user] = await dbQuery("SELECT * FROM users WHERE email = ?;", [req.params.email]);
        if (!user) return res.status(404).json({ message: "User not found" });
        res.status(200).json(user);
    } catch (err) {
        next(err);
    }
});

router.post("/", async (req, res, next) => {
    try {
        const result = await dbRun(
            "INSERT INTO users (firstName, lastName, email) VALUES (?, ?, ?);",
            [req.body.firstName, req.body.lastName, req.body.email]
        );
        res.status(201).json({ id: result.lastID, ...req.body });
    } catch (err) {
        next(err);
    }
});

router.put("/:email", async (req, res, next) => {
    try {
        const [user] = await dbQuery("SELECT * FROM users WHERE email = ?;", [req.params.email]);
        if (!user) return res.status(404).json({ message: "User not found" });

        await dbRun(
            "UPDATE users SET firstName = ?, lastName = ? WHERE email = ?;",
            [
                req.body.firstName || user.firstName,
                req.body.lastName || user.lastName,
                req.params.email
            ]
        );
        res.status(200).json({
            email: req.params.email,
            firstName: req.body.firstName || user.firstName,
            lastName: req.body.lastName || user.lastName
        });
    } catch (err) {
        next(err);
    }
});

router.delete("/:email", async (req, res, next) => {
    try {
        const [user] = await dbQuery("SELECT * FROM users WHERE email = ?;", [req.params.email]);
        if (!user) return res.status(404).json({ message: "User not found" });

        await dbRun("DELETE FROM users WHERE email = ?;", [req.params.email]);
        res.sendStatus(204);
    } catch (err) {
        next(err);
    }
});

export default router;
