import express from "express";
import { dbQuery, dbRun } from "../database.js";

const router = express.Router();

router.get("/users", async (req, res, next) => {
    try {
        const users = await dbQuery("SELECT * FROM user;"); 
        res.status(200).json(users);
    } catch (err) {
        next(err);
    }
});

router.get("/users/:id", async (req, res, next) => {
    try {
        const [user] = await dbQuery("SELECT * FROM users WHERE id = ?;"); /
        if (!user) return res.status(404).json({ message: "User not found" });
        res.status(200).json(user);
    } catch (err) {
        next(err);
    }
});

router.post("/users", async (req, res, next) => {
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

router.put("/users/:id", async (req, res, next) => {
    try {
        const [user] = await dbQuery("SELECT * FROM users WHERE id = ?;", [req.params.id]);
        if (!user) return res.status(404).json({ message: "User not found" });

        await dbRun(
            "UPDATE users SET firstName = ?, lastName = ?, email = ? WHERE id = ?;",
            [
                req.body.firstName || user.firstName,
                req.body.lastName || user.lastName,
                req.body.email || user.email,
                req.params.id
            ]
        );
        res.status(200).json({
            id: req.params.id,
            firstName: req.body.firstName || user.firstName,
            lastName: req.body.lastName || user.lastName,
            email: req.body.email || user.email
        });
    } catch (err) {
        next(err);
    }
});

router.delete("/users/:id", async (req, res, next) => {
    try {
        const [user] = await dbQuery("SELECT * FROM users WHERE id = ?;", [req.params.id]);
        if (!user) return res.status(404).json({ message: "User not found" });

        await dbRun("DELETE FROM users WHERE id = ?;", [req.params.id]);
        res.sendStatus(204);
    } catch (err) {
        next(err);
    }
});

export default router;