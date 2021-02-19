var express = require('express');
var router  = express.Router();
var pool    = require('./pool');
var upload  = require('./multer');

router.post('/coching_information',function(req, res, next){
  pool.query('insert into coching_information(coching_id,name,coching_name,address,state,city,zip,email,mobile_number,course)values(?,?,?,?,?,?,?,?,?,?)',[req.body.coching_id,req.body.name,req.body.coching_name,req.body.address,req.body.state,req.body.city,req.body.zip,req.body.email,req.body.mobile_number,req.body.course],function(error,result){
     if(error){
         return res.status(200).json({result:true})
     }
      else{
         
          return res.status(500).json({result:false})
      }
    });
  });

 
router.get('/DisplayCochingServices',function(req, res, next){
  pool.query('select * from coching_information',function(error,result){
     if(error){
       return res.status(200).json([]);
     }
      else{
        return res.status(500).json(result);
      }
  });
});



router.post('/displaycochinId',function(req, res, next){
  pool.query('select * from coching_information where coching_id=?',[req.body.coching_id],function(error,result){
    if(error){
      return res.status(500).json([])
    }
     else{
       return res.status(200).json(result)
     }
  })
})

// use to cocing Update data
router.post('/displaycocingUpdate',function(req, res, next){
  pool.query('update coching_information set name=?,coching_name=?,address=?,state=?,city=?,zip=?,email=?,mobile_number=? where coching_id=?',[req.body.name,req.body.coching_namem,req.body.address,req.body.state,req.body.city,req.body.zip,req.body.email,req.body.mobile_number,req.body.coching_id],function(error,result){
    if(error){
      return res.status(500).json({result:false})
    }
     else{
       return res.status(200).json({result:true})
     }
  })
})


router.post('/displaycocingDelete',function(req, res, next){
  pool.query('delete from coching_information where coching_id=?',[req.body.coching_id],function(error,result){
    if(error){
      return res.status(500).json({result:false})
    }
     else{
       return res.status(200).json({result:true})
     }
  })

})






module.exports = router;
