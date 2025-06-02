const express = require("express");
const Sequelize = require("sequelize");

const app = express();
// 1. Database, 2. username 3. Password
const sequelize = new Sequelize("NxM301", "root", "Sourav@1999", {
  host: "localhost",
  dialect: "mysql", // postgress, mariadb
});

const students = sequelize.define("students", {
  name: Sequelize.STRING,
  email: Sequelize.STRING,
  age: Sequelize.INTEGER,
});

app.get("/", (req, res) => {
  res.status(200).json({
    isError: false,
    data: "All OK",
  });
});

// ! Mongodb
/*
connect("url").then(() => {
     app.listen(3001, () => {
       console.log("Server Started");
     });
 })
 */
sequelize.sync().then(() => {
  app.listen(3001, () => {
    console.log("Server Started");
  });
});
