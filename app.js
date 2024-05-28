// app.js
const express = require('express');
const bodyParser = require('body-parser');
const sequelize = require('./config');
const patientRoutes = require('./routes/patientRoutes');
const psychiatristRoutes = require('./routes/psychiatristRoutes');

const app = express();

app.use(bodyParser.json());
app.use('/patients', patientRoutes);
app.use('/psychiatrists', psychiatristRoutes);

const seedDatabase = async () => {
    const Hospital = require('./models/hospital');
    const Psychiatrist = require('./models/psychiatrist');

    const hospitals = [
        { name: 'Apollo Hospitals' },
        { name: 'Jawaharlal Nehru Medical College and Hospital' },
        { name: 'Indira Gandhi Institute of Medical Sciences (IGIMS)' },
        { name: 'AIIMS - All India Institute Of Medical Science' }
    ];

    await Hospital.bulkCreate(hospitals);

    const hospitalIds = await Hospital.findAll({ attributes: ['id'] });

    for (const hospitalId of hospitalIds) {
        for (let i = 0; i < 5; i++) {
            await Psychiatrist.create({ name: `Psychiatrist ${i + 1}`, HospitalId: hospitalId.id });
        }
    }
};


sequelize.sync({force:true}).then(async () => {
    console.log('Database connected and synchronized');
    await seedDatabase();
    app.listen(3000, () => {
        console.log('Server is running on port 3000');
    });
}).catch(error => {
    console.error('Unable to connect to the database:', error);
});
