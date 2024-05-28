// routes/patientRoutes.js
const express = require('express');
const { body } = require('express-validator');
const { registerPatient, upload } = require('../controllers/patientController');

const router = express.Router();

router.post('/register', upload.single('photo'), [
    body('name').notEmpty(),
    body('address').isLength({ min: 10 }),
    body('email').isEmail(),
    body('phone').isLength({ min: 10 }),
    body('password').matches(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/).isLength({ min: 8, max: 15 }),
    body('psychiatristId').notEmpty(),
], registerPatient);

module.exports = router;
