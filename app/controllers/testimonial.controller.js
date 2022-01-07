const Testimonial = require("../models/testomonial.model.js");



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