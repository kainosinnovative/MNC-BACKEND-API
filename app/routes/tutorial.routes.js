module.exports = app => {
  // const tutorials = require("../controllers/tutorial.controller.js");
  const testimonials = require("../controllers/testimonial.controller.js");

  var router = require("express").Router();

  router.use(function(req,res,next)
  {
  res.header("Access-Control-Allow-Origin","*");
  res.header("Access-Control-Allow-Headers","Origin,x-Requested-with,Content-Type,Accept");
  next();
  });

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

  app.use('/', router);
};
