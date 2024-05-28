// controllers/psychiatristController.js
const Psychiatrist = require('../models/psychiatrist');
const Patient = require('../models/patient');
const Hospital = require('../models/hospital');

const getPsychiatristsAndPatients = async (req, res) => {
    try {
        const { hospitalId } = req.body;
        const hospital = await Hospital.findByPk(hospitalId, {
            include: {
                model: Psychiatrist,
                include: [Patient]
            }
        });

        if (!hospital) {
            return res.status(404).json({ error: 'Hospital not found' });
        }

        const psychiatrists = hospital.Psychiatrists.map(psy => ({
            id: psy.id,
            name: psy.name,
            patientsCount: psy.Patients.length
        }));

        res.json({
            hospitalName: hospital.name,
            totalPsychiatrists: hospital.Psychiatrists.length,
            totalPatients: hospital.Psychiatrists.reduce((acc, psy) => acc + psy.Patients.length, 0),
            psychiatrists
        });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

module.exports = { getPsychiatristsAndPatients };
