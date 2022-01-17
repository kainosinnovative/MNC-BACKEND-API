const Testimonial = require("../models/testomonial.model.js");
// const bodyParser = require("body-parser"); /* deprecated */


// Retrieve all Tutorials from the database (with condition).
exports.findAll = (req, res) => {
//   const title = req.query.title;

  Testimonial.getAll2((err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving tutorials."
      });
    else res.send(data);
  });
};


// vj add
exports.create =  (req, res) => {
  console.log("rating>>>>",req.body.user_rating);
  console.log("desc>>>>",req.body.user_description);
  console.log("title>>>>",req.body.title);
  // Validate request
  if (!req.body) {
    console.log("Content can not be empty!");
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }
  

  // Create a testimonial
  const testimonial = new Testimonial({
    user_description: req.body.user_description
  });

  // Save Tutorial in the database
  Testimonial.create(testimonial, (err, data) => {
    // console.log("2nd create")
    // console.log(data)
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Tutorial."
      });
    else res.send(data);
  });
};



