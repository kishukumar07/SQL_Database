module.exports = (sequelize, DataTypes) => {
  const Students = sequelize.define("students", {
    name: DataTypes.STRING,
    email: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    age: DataTypes.INTEGER,
    courseID: {
      type: DataTypes.INTEGER,
      references: {
        model: "courses",
        key: "id",
      },
    },
  });
  return Students;
};
