// controllers/patientController.js
const { validationResult } = require('express-validator');
const Patient = require('../models/patient');
const Psychiatrist = require('../models/psychiatrist');
const multer = require('multer');

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'uploads/');
    },
    filename: function (req, file, cb) {
        cb(null, Date.now() + '-' + file.originalname);
    }
});
const upload = multer({ storage: storage });

const registerPatient = async (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({ errors: errors.array() });
    }
    
    try {
        const { name, address, email, phone, password, psychiatristId } = req.body;
        const photo = req.file.path;
        const patient = await Patient.create({
            name, address, email, phone, password, photo, PsychiatristId: psychiatristId
        });
        res.status(201).json(patient);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

module.exports = { registerPatient, upload };
