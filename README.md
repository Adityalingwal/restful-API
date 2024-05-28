-> Install the dependencies

"npm i"

-> Run the server

"node app.js"

-> Open Postman and create a new POST request for the patient registration endpoint: http://localhost:3000/patients/register

In the Body tab, select form-data and add the following fields:

**name:** John Doe
**address:** 123 Main St, Springfield, IL
**email:** john.doe@example.com
**phone:** +1234567890
**password:** Password1
**psychiatristId**: 1 (assuming a psychiatrist with ID 1 exists)
**photo:** Choose a file to upload

-> Create another POST request for the psychiatrist details endpoint: http://localhost:3000/psychiatrists/fetchPsychiatrists.

In the Body tab, select raw and choose JSON format. Add the following JSON data:

{
  "hospitalId": 1
}

#   r e s t f u l - A P I  
 