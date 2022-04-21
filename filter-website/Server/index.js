//Libraries
const express = require("express");
const multer = require("multer");
const card = require('./Model/card');
const mysql = require('mysql');

//Setup defaults for script
const app = express();
app.use(express.static('public'));
//app.use(cors());
const upload = multer();
const port = 80; //Default port to http server
const connection = mysql.createConnection({
  host: "bsu-gimm260-fall-2021.cwtgn0g8zxfm.us-west-2.rds.amazonaws.com",
  user: "in_class_activity",
  password: "in_class_activity",
  database: "in_class_activity",
});
// this is the conntroller in MVC!
//The * in app.* needs to match the method type of the request
app.get(
"/class/", 
upload.none(), 
async (request, response) => {
  let result = {}
  try {
    result = await card.getCardsWithParams(request.query);
  } catch (error) {
    return response
    .status(500) //Error code when something goes wrong with the server
    .json({ message: "Something went wrong with the server." });
  }
  console.log(selectSql);
  connection.query(selectSql, queryParameters, (error, result) => {

      //Default response object
      response
        .json({ data: result });
  });
});

app.listen(port, () => {
  console.log(`Application listening at http://localhost:${port}`);
});
