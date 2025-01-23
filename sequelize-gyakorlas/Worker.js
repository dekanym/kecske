import { Sequelize, DataTypes, Op } from "sequelize";

const sequelize = new Sequelize({
    dialect: "sqlite",
    storage: "database.sqlite",
});

const Worker = sequelize.define("Worker", {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    vezeteknev: DataTypes.STRING,
    keresztnev: DataTypes.STRING,
    pozicio: DataTypes.STRING,
    fizetes: DataTypes.INTEGER,
});
 await sequelize.sync();
 await Worker.bulkCreate([
            { vezeteknev: 'Erős', keresztnev: 'Macska', pozicio: 'programmer', fizetes: 50000 },
            { vezeteknev: 'Úrias', keresztnev: 'Cica', pozicio: 'designer', fizetes: 40000 },
            { vezeteknev: 'Kiss', keresztnev: 'Bob', pozicio: 'manager', fizetes: 60000 },
        ]);


async function dolgozok() {
        const dolgozok = await Worker.findAll();
        console.log(dolgozok);
}

async function egydolgozo() {
    const egydolgozo = await Worker.findOne({
        where: {
            fizetes: 50000
        }
    });
    console.log(egydolgozo);
}

async function dolgozoaddas(vezeteknev, keresztnev, pozicio, fizetes) {
    try {
        const ujdolgozo = await Worker.create({
            vezeteknev,
            keresztnev,
            pozicio,
            fizetes
        });
        console.log('Új munkás:', ujdolgozo.toJSON());
    } catch (error) {
        console.error('Error adding new worker:', error);
    }
}
async function main() {
    await dolgozok();
    await egydolgozo();
    await dolgozoaddas('Femboy', 'Feri', 'manager', 90000);
}
async function dolgozomodositas(id, vezeteknev, keresztnev, pozicio, fizetes) {
    try {
        const modositottDolgozo = await Worker.update(
            { vezeteknev, keresztnev, pozicio, fizetes },
            { where: { id } }
        );
        console.log(`${modositottDolgozo[0]} worker record(s) updated.`);
    } catch (error) {
        console.error('Error updating worker:', error);
    }
}

async function dolgozotorles(id) {
    try {
        const toroltDolgozok = await Worker.destroy({ where: { id } });
        console.log(`${toroltDolgozok} worker record(s) deleted.`);
    } catch (error) {
        console.error('Error deleting worker:', error);
    }
}

async function main() {
    await dolgozok();
    await egydolgozo();
    await dolgozoaddas('Femboy', 'Feri', 'manager', 90000);
    await dolgozomodositas(1, 'Erős', 'Macska', 'senior programmer', 60000);
    await dolgozotorles(2);
}

main();