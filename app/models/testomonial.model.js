const sql = require("./db.js");


// const Testimonial;
const Testimonial = function(testimonial) {
    
  };
Testimonial.getAll2 = (result) => {
    let query = "SELECT * FROM testimonial";
  
    
  
    sql.query(query, function (err, res)  {
      if (err) {
        console.log("error: ", err);
        result(null, err);
        return;
      }
  
      console.log("testimonial: ", res);
      result(null, res);
    });
  };


  module.exports = Testimonial;