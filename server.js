
var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var mysql = require('mysql');
const cors = require("cors");
 
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));

require("./app/routes/tutorial.routes.js")(app);



// app.all('/*', function(request, response, next) {
//   response.header("Access-Control-Allow-Origin", "*");
//   response.header('Access-Control-Allow-Methods', 'GET, PUT, POST, DELETE, OPTIONS');
//   response.header('Access-Control-Allow-Headers', 'Origin, Content-Type, Accept');
//   if (request.method == 'OPTIONS') {
//         response.status(200).end();
//   } else {
//         next();
//   }
// });

// var corsOptions = {
//   origin: "http://localhost:8080"
// };



// parse requests of content-type - application/json
// app.use(express.json()); /* bodyParser.json() is deprecated */

// parse requests of content-type - application/x-www-form-urlencoded
// app.use(express.urlencoded({ extended: true })); /* bodyParser.urlencoded() is deprecated */

// simple route
app.get("/", (req, res) => {
  res.json({ message: "Welcome to bezkoder application354355." });
});



// set port, listen for requests
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});



