const express = require("express");
const bodyParser = require("body-parser");
const sequelize = require("./config");
const patientRoutes = require("./routes/patientRoutes");
const psychiatristRoutes = require("./routes/psychiatristRoutes");

const app = express();

app.use(bodyParser.json());
app.use("/patients", patientRoutes);
app.use("/fetchPsychiatrists", psychiatristRoutes);

const seedDatabase = async () => {
  const Hospital = require("./models/hospital");
  const Psychiatrist = require("./models/psychiatrist");

  const hospitals = [
    { name: "Apollo Hospitals" },
    { name: "Jawaharlal Nehru Medical College and Hospital" },
    { name: "Indira Gandhi Institute of Medical Sciences (IGIMS)" },
    { name: "AIIMS - All India Institute Of Medical Science" },
  ];

  const psychiatristNames = [
    "Dr. Alice Smith",
    "Dr. Bob Johnson",
    "Dr. Carol Williams",
    "Dr. David Brown",
    "Dr. Emily Jones",
    "Dr. Frank Garcia",
    "Dr. Grace Martinez",
    "Dr. Henry Wilson",
    "Dr. Ivy Anderson",
    "Dr. Jack Thomas",
    "Dr. Karen Moore",
    "Dr. Larry Jackson",
    "Dr. Maria White",
    "Dr. Nick Harris",
    "Dr. Olivia Martin",
    "Dr. Paul Thompson",
    "Dr. Queen Roberts",
    "Dr. Richard Clark",
    "Dr. Sarah Lewis",
    "Dr. Tom Walker",
  ];

  await Hospital.bulkCreate(hospitals);

  const hospitalIds = await Hospital.findAll({ attributes: ["id"] });
  let nameIndex = 0;

  for (const hospitalId of hospitalIds) {
    for (let i = 0; i < 5; i++) {
      if (nameIndex >= psychiatristNames.length) {
        console.log(
          "Not enough names in the psychiatristNames array to cover all psychiatrists."
        );
        return;
      }
      await Psychiatrist.create({
        name: psychiatristNames[nameIndex],
        HospitalId: hospitalId.id,
      });
      nameIndex++;
    }
  }
};

sequelize
  .sync({ force: true })
  .then(async () => {
    console.log("Database connected and synchronized");
    await seedDatabase();
    app.listen(3000, () => {
      console.log("Server is running on port 3000");
    });
  })
  .catch((error) => {
    console.error("Unable to connect to the database:", error);
  });
