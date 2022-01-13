

module.exports = app => {
  // const express = require("express");
// const router = express.Router();
// const bodyParser = require("body-parser"); /* deprecated */

// const cors = require("cors");

// const app = express();

// app.use(bodyParser.urlencoded());
// app.use(bodyParser.json());

  const tutorials = require("../controllers/tutorial.controller.js");
  const testimonials = require("../controllers/testimonial.controller.js");

  var router = require("express").Router();

  router.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, x-client-key, x-client-token, x-client-secret, Authorization");
        res.header("Access-Control-Allow-Methods", "GET,HEAD,OPTIONS,POST,PUT");
    next();
  });

  // router.use(function(req,res,next)
  // {
    // res.setHeader( 'Access-Control-Allow-Headers', 'Accept,Accept- Language,Content-Language,Content-Type');
    // res.header("Content-Type","application/json");
  // res.header("Access-Control-Allow-Origin",'*');
  // res.header("Access-Control-Allow-Methods",'POST');
  // res.header("Access-Control-Allow-Headers","Origin, X-Requested-With, Content-Type, Accept");
  // res.header("Access-Control-Allow-Credentials",'true')
  // next();
  // });

  // Create a new Tutorial
  // router.post("/", tutorials.create);

  // // Retrieve all Tutorials
  // router.get("/", tutorials.findAll);

  // // Retrieve all published Tutorials
  // router.get("/published", tutorials.findAllPublished);

  // // Retrieve a single Tutorial with id
  // router.get("/:id", tutorials.findOne);

  // // Update a Tutorial with id
  // router.put("/:id", tutorials.update);

  // // Delete a Tutorial with id
  // router.delete("/:id", tutorials.delete);

  // // Delete all Tutorials
  // router.delete("/", tutorials.deleteAll);

  router.get("/testimonial", testimonials.findAll);

// console.log("testimonials.create>>",testimonials.create)
  router.post("/add-user", testimonials.create);

  app.use('/', router);
};
