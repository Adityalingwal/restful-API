
const { DataTypes } = require('sequelize');
const sequelize = require('../config');

const Hospital = sequelize.define('Hospital', {
    name: {
        type: DataTypes.STRING,
        allowNull: false
    }
});

module.exports = Hospital;
