const { Sequelize } = require('sequelize');

const sequelize = new Sequelize('hospital_management', 'root', 'Aditya1@', {
    host: 'localhost',
    dialect: 'mysql'
});

module.exports = sequelize;
