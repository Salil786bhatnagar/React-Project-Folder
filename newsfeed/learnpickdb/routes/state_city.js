var express = require('express');
var router = express.Router();
var pool=require('./pool');


router.get('/displaystate',function(req, res, next){
    pool.query('select * from states',function(error,result){
       if(error){
          console.log(error)
          return res.status(500).json([])
       }
        else{
           console.log(result)
           return res.status(200).json(result)
        }
    })
 })


 router.post('/displaycity', function(req, res, next) {
   console.log(req.body)
   pool.query("select * from cities where stateid=?",[req.body.stateid],function(error,result){
    if(error)
      {
        console.log(error)
       return res.status(500).json([])
    }
    else
    { console.log(result)
      return res.status(200).json(result)
     }
   })
 })
  module.exports = router; 





module.exports = router;
