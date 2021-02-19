var express = require('express');
var router = express.Router();
var pool=require('./pool');
var upload=require('./multer');


router.post('/subCategory',upload.single('icon'),function(req, res, next){
        pool.query('insert into subcategories(categories_id,description,subcategoryicon)values(?,?,?)',[req.body.categories_id,req.body.description,req.file.filename],function(error, result){
     if(error){
        return res.status(500).json({result:false})
     }
       else{
           return res.status(200).json({result:true})
       }
 });
});


module.exports = router;