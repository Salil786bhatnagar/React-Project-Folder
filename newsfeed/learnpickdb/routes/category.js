var express = require('express');
var router = express.Router();
var pool=require('./pool');
var upload=require('./multer');

/* GET home page. */
router.post('/addnewcategory',upload.single('icon'), function(req, res, next) {
    pool.query('insert into categories(categoryname,categoryicon)values(?,?)',[req.body.categoryname,req.file.filename],function(error,result){
        if(error)
        {return res.status(500).json({result:false})
        
        }else
        {
           return res.status(200).json({result:true})   
        }
         
       
        
        })
       });

router.get('/displayallcategory',function(req,res,next){
  pool.query('select * from categories',function(error,result){
     if(error){
         res.status(500).json([])
     } else{
         res.status(200).json(result);
     }
  })
});


// use to search data by id
router.post('/displaybyid',function(req, res, next){
 pool.query('select * from categories where categories_id=?',[req.body.categories_id],function(error,result){
  if(error){
      res.status(500).json([])
  }else{
      res.status(200).json(result);
  }
 });
});


router.post('/editdata', function(req, res, next) {
    pool.query("update categories set categoryname=? where categories_id=?",[req.body.categoryname,req.body.categoryid],function(error,result){
     if(error)
     {
        return res.status(500).json({result:false})
     }
     else
     {
  
        return res.status(200).json({result:true})
    
     }
     })
  
   })


   router.post('/deletedata', function(req, res, next) {
    pool.query("delete from categories  where categories_id=?",[req.body.categoryid],function(error,result){
     if(error)
     {
        return res.status(500).json({result:false})
     }
     else
     {
  
        return res.status(200).json({result:true})
    
    
     }
     })
  
   })


   router.post('/editPicture',upload.single('icon'), function(req, res, next) {
    console.log(req.body)
    console.log(req.file)
  pool.query('update categories set categoryicon=? where categories_id=?',[req.file.filename,req.body.categories_id],function(error,result){
  if(error)
  {return res.status(500).json({result:false})
  }else
  {
     return res.status(200).json({result:true})   
  }
   
 
  
  })
 });
       

module.exports = router;
