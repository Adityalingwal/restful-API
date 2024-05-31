const Psychiatrist = require("../models/psychiatrist");
const Patient = require("../models/patient");
const Hospital = require("../models/hospital");

const getPsychiatristsAndPatients = async (req, res) => {
  const { hospitalId } = req.query;

  if (!hospitalId) {
    return res.status(400).json({ error: "Hospital ID is required" });
  }

  try {
    const hospital = await Hospital.findByPk(hospitalId);
    if (!hospital) {
      return res.status(404).json({ error: "Hospital not found" });
    }

    const psychiatrists = await Psychiatrist.findAll({
      where: { HospitalId: hospitalId },
      include: [{ model: Patient }],
    });

    const psychiatristDetails = psychiatrists.map((psychiatrist) => ({
      id: psychiatrist.id,
      name: psychiatrist.name,
      patientsCount: psychiatrist.Patients.length,
      patients: psychiatrist.Patients.map((patient) => ({
        id: patient.id,
        name: patient.name,
        email: patient.email,
        phone: patient.phone,
        address: patient.address,
        photo: patient.photo,
      })),
    }));

    const response = {
      hospitalName: hospital.name,
      totalPsychiatristCount: psychiatrists.length,
      totalPatientsCount: psychiatrists.reduce(
        (acc, psychiatrist) => acc + psychiatrist.Patients.length,
        0
      ),
      psychiatrists: psychiatristDetails,
    };

    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

module.exports = { getPsychiatristsAndPatients };
