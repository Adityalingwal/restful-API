// models/patient.js
const { DataTypes } = require('sequelize');
const sequelize = require('../config');
const Psychiatrist = require('./psychiatrist');

const Patient = sequelize.define('Patient', {
    name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    address: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            len: [10]
        }
    },
    email: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            isEmail: true
        }
    },
    phone: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            len: [10]
        }
    },
    password: {
        type: DataTypes.STRING,
        allowNull: false,
        validate: {
            len: [8, 15],
            is: /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/
        }
    },
    photo: {
        type: DataTypes.STRING,
        allowNull: false
    }
});

Patient.belongsTo(Psychiatrist);
Psychiatrist.hasMany(Patient);

module.exports = Patient;
