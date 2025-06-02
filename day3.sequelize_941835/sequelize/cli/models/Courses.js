module.exports = (sequelize, DataTypes) => {
  const Courses = sequelize.define("courses", {
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  });
  return Courses;
};
