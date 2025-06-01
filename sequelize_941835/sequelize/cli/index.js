const { sequelize, students, courses } = require("./models");
const express = require("express");
const { Op } = require("sequelize");

const app = express();
app.use(express.json());
// CRUD ->

// R -> findOne/findAll
app.get("/api/students", async (req, res) => {
  try {
    courses.hasMany(students, { foreignkey: "courseID" });
    students.belongsTo(courses, { foreignkey: "courseID" });
    const data = await students.findAll({
      include: [courses],
    });
    res.status(200).json({
      isError: false,
      data,
    });
  } catch (error) {
    res.status(400).json({
      isError: true,
      error,
    });
  }
});
app.get("/api/students/:search", async (req, res) => {
  try {
    courses.hasMany(students, { foreignkey: "courseID" });
    students.belongsTo(courses, { foreignkey: "courseID" });
    const data = await students.findAll({
      include: [courses],
      where: {
        name: {
          [Op.like]: `%${req.params.search}%`,
        },
      },
    });
    res.status(200).json({
      isError: false,
      data,
    });
  } catch (error) {
    res.status(400).json({
      isError: true,
      error,
    });
  }
});
// C -> create
app.post("/api/students", async (req, res) => {
  try {
    // ! Never trust your users they are evil
    const { name, email, age, courseID } = req.body;
    const data = await students.create({ name, email, age, courseID });
    res.status(200).json({
      isError: false,
      data,
    });
  } catch (error) {
    res.status(400).json({
      isError: true,
      error,
    });
  }
});

// U -> upsert
app.put("/api/students/:id", async (req, res) => {
  try {
    const data = await students.upsert({
      id: req.params.id,
      ...req.body,
    });
    res.status(200).json({
      isError: false,
      data,
    });
  } catch (error) {
    res.status(400).json({
      isError: true,
      error,
    });
  }
});

// D -> destroy

// Complete the courses CRUD
app.post("/api/course", async (req, res) => {
  try {
    const { name } = req.body;
    const data = await courses.create({ name });
    res.status(200).json({
      isError: false,
      data: data,
    });
  } catch (error) {
    console.log(error);
    res.status(400).json({
      isError: true,
      error,
    });
  }
});

sequelize.sync().then(() => {
  app.listen(3001, () => {
    console.log("Server Started");
  });
});
