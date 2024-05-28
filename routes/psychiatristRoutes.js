// routes/psychiatristRoutes.js
const express = require('express');
const { getPsychiatristsAndPatients } = require('../controllers/psychiatristController');

const router = express.Router();

router.post('/fetchPsychiatrists', getPsychiatristsAndPatients);

module.exports = router;
