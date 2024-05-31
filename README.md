1. Libraries and frameworks used in this project :-

-> Express.js : Used to build the RESTful APIs, set up the server and define the routes.
-> Sequelize : ORM for interacting with the database. It is used to handle database operations and define models for hospitals, psychiatrists, and patients.
-> MySQL2 : Database to store application data.

2. List of API endpoints details :-

-> Link to my Postman collection for testing - https://documenter.getpostman.com/view/35284403/2sA3Qv9BHz

-> Open Postman and create a new POST request for the patient registration endpoint: http://localhost:3000/patients/register

In the Body tab, select form-data and add the following fields:

name     : John Doe
address  : 123 Main St, Springfield, IL
email    : john.doe@example.com
phone    : +1234567890
password : Password1
psychiatristId : 1
photo : Choose a file to upload

-> Create GET request for the psychiatrist details endpoint: http://localhost:3000/fetchPsychiatrists?hospitalId=1 and can also test this link in the browser to fetch the psychiatrist details.

-> Install the dependencies

"npm i"

-> Run the server

"node app.js"#   r e s t f u l - A P I  
 