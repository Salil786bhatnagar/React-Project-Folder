var express = require('express');
var router = express.Router();
var pool=require('./pool');
var upload=require('./multer');

// Use to insert data in database
router.post('/tutorial_information',upload.single('icon'),function(req, res, next){
    console.log(req)
 pool.query('insert into tutorial_information(firstname,lastname,gender,address,mobile_number,state,city,zip,equalification,exprience,dob,email,password,photo)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)',[req.body.firstname,req.body.lastname,req.body.gender,req.body.address,req.body.mobile_number,req.body.state,req.body.city,req.body.zip,req.body.equalification,req.body.exprience,req.body.dob,req.body.email,req.body.password,req.file.filename],function(error,result){
    
    if(error){
         console.log(error);
        return res.status(500).json({result:false})
    }
      else{
          return res.status(200).json({result:true})
      }
 });
});

// use to select all data
router.get('/displayTutorialServices',function(req, res, next){
    pool.query('select * from tutorial_information',function(error,result){
      if(error){
         return res.status(500).json([])
      }
       else{
          return res.status(200).json(result); 
       }
    });
   });

// Use to where condition by id
router.post('/displayTutorialbyId',function(req, res, next){
 pool.query('select * from tutorial_information where tutorial_id=?',[req.body.tutorial_id],function(error,result){
  if(error){
     return res.status(500).json([])
  }
   else{
      return res.status(200).json(result);
   }
 });
});  
 
// Use to Update
router.post('/tutorialaditRecord',function(req, res, next){
 pool.query('update tutorial_information set firstname=?,lastname=?,gender=?,address=?,mobile_number=?,state=?,city=?,zip=?,equalification=?,exprience=?,dob=?,email=? where tutorial_id=?',[req.body.firstname,
   req.body.lastname,req.body.gender,req.body.address,req.body.mobile_number,req.body.state,req.body.city,req.body.zip,req.body.equalification,req.body.exprience,req.body.dob,req.body.email,req.body.tutorial_id],function(error,result){
    if(error){
       return res.status(500).json({result:false})
    }
     else{
        return res.status(200).json({result:true})
     }
 })
})

// use to Delete data
router.post('/tutorialdeleteRecord',function(req, res, next){
   pool.query('delete from tutorial_information where tutorial_id=?',[req.body.tutorial_id],function(error,result){
      if(error){
         return res.status(500).json({result:false})
      }
       else{
          return res.status(200).json({result:true})
       }
   })
})


router.post('/tutorialupdateImage',upload.single('icon'),function(req, res, next){
   pool.query('update tutorial_information set photo=? where tutorial_id=?',[req.file.filename,
      req.body.tutorial_id],function(error,result){
    if(error){
       return res.status(500).json({result:false})
    }
     else{
        return res.status(200).json({result:true})
     }
   });
})



module.exports = router;
