
const { DataTypes } = require('sequelize');
const sequelize = require('../config');
const Hospital = require('./hospital');

const Psychiatrist = sequelize.define('Psychiatrist', {
    name: {
        type: DataTypes.STRING,
        allowNull: false
    }
});

Psychiatrist.belongsTo(Hospital);
Hospital.hasMany(Psychiatrist);

module.exports = Psychiatrist;
