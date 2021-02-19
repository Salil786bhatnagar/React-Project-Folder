var express = require('express');
var router = express.Router();
var pool = require('./pool.js');
var multer = require('./multer');


/* GET home page. */
router.post('/brandInformation',multer.any(), function(req, res, next) {
  if(!localStorage.getItem('token'))
  {
    return res.status(200).json('Session Expired Pls Login Again')

  }
  pool.query('insert into brand(categoryid,brandname,description,picture,ad,topbrand,newbrand,adstatus)values(?,?,?,?,?,?,?,?)',[req.body.categoryid,req.body.brandname,req.body.description,req.files[0].filename,req.files[1].filename,req.body.topbrand,req.body.newbrand,req.body.adstatus],function(error, result){
  if(error){
      console.log(res);
     return res.status(500).json({'RESULT':false})
  }
   else{
       console.log(result)  
       return res.status(200).json({'RESULT':true})
   }
  });
});

/* fetch tha brand data */
router.get('/brandalldata',function(req, res, next){
  if(!localStorage.getItem('token'))
  {
    return res.status(200).json('Session Expired Pls Login Again')

  }
  pool.query('select * from brand',function(error,result){
    if(error){
      res.status(500).json([])
    }
     else{
       res.status(200).json(result);
     }
   });
 });


 /* fetch tha brand ad fetch data */
router.get('/fetchbrandadlist',function(req, res, next){
  pool.query('select * from brand where adstatus="yes"',function(error,result){
    if(error){
      res.status(500).json([])
    }
     else{
       res.status(200).json(result);
     }
   });
 });


 /* fetch tha top brand fetch data */
router.get('/fetchtopbrandadlist',function(req, res, next){
  pool.query('select * from brand where topbrand="yes"',function(error,result){
    if(error){
      res.status(500).json([])
    }
     else{
       res.status(200).json(result);
     }
   });
 });



 /* fetch tha top brand fetch data */
router.get('/fetchnewbrandadlist',function(req, res, next){
  pool.query('select * from brand where newbrand="yes"',function(error,result){
    if(error){
      res.status(500).json([])
    }
     else{
       res.status(200).json(result);
     }
   });
 });



 
 router.post('/brandDisplayName',function(req, res, next){
  if(!localStorage.getItem('token'))
  {
    return res.status(200).json('Session Expired Pls Login Again')

  }
  pool.query('select * from brand where categoryid=?',[req.body.categoryid],function(error, result){
    if(error){
     return res.status(500).json([]);
    }
     else{
       
     return  res.status(200).json(result);
     }
  })
})

router.post('/deleteRecord',function(req, res, result){
  if(!localStorage.getItem('token'))
  {
    return res.status(200).json('Session Expired Pls Login Again')

  }
 pool.query('delete from brand where brandid=?',[req.body.brand_id],function(error, result){
  if(error){
    res.status(500).json([])
   }
    else{
      res.status(200).json(result)
    }
  });
});


router.post('/displaybybrandidMainMenu',function(req,res,next){
  console.log(req.body)
  pool.query("select * from brand where categoryid=?",[req.body.categoryid],function(err,result){
    if(err){
      console.log(err)
      return  res.status(500).json([])
    }
    else{
      console.log(result)
      return  res.status(200).json(result)
    }
  })

})

module.exports = router;
