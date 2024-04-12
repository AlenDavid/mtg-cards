const express = require("express");

const { Sequelize, DataTypes } = require("sequelize");

const conn = "postgres://postgres:postres@localhost:5432/postgres";

const sequelize = new Sequelize(conn);

const Card = sequelize.define(
  "card",
  {
    name: DataTypes.TEXT,
    manacost: DataTypes.TEXT,
    keywords: DataTypes.TEXT,
    text: DataTypes.TEXT,
    number: DataTypes.INTEGER,
    power: DataTypes.INTEGER,
    toughness: DataTypes.INTEGER,
    artist: DataTypes.TEXT,
  },
  {
    timestamps: false,
  }
);

const app = express();

app.get("/", (req, res) => {
  res.json({ msg: "cala a boca mano" });
});

app.get("/cards", async (req, res) => {
  const cards = await Card.findAll({ limit: 50 });
  res.json({ cards });
});

app.listen("3000", () =>
  console.log("🚀 server listening to http://localhost:3000")
);

