const express = require('express');
const { getPsychiatristsAndPatients } = require('../controllers/psychiatristController');

const router = express.Router();

router.get('/', getPsychiatristsAndPatients);

module.exports = router;
