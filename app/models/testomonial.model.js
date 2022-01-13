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
  
      // console.log("testimonial: ", res);
      result(null, res);
    });
  };


  // vj add

  Testimonial.create = (newTutorial, result) => {
    
    console.log("result")
    // alert(newTutorial)
    // sql.query("INSERT INTO test (title) VALUES ('Cardinal')");
    // sql.query("INSERT INTO testimonial?", newTutorial, (err, res) => {
    //   if (err) {
    //     console.log("error: ", err);
    //     result(err, null);
    //     return;
    //   }
  
    //   console.log("created testimonial: ", { id: res.insertId, ...newTutorial });
    //   result(null, { id: res.insertId, ...newTutorial });
    // });
  };


  module.exports = Testimonial;