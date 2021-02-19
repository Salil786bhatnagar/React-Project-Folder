var express = require('express');
var router = express.Router();
var pool = require('./pool.js');
var localStorage=require('node-localstorage').LocalStorage
localStorage = new localStorage('/scratch')

/* modle insert value */
router.post('/modleInsertData', function(req, res, next) {
  if(!localStorage.getItem('token'))
  {
    return res.status(200).json('Session Expired Pls Login Again')

  }
  pool.query('insert into modle(brandid,modlename,description)values(?,?,?)',[req.body.brandid, req.body.modlename,req.body.description],function(error, result){
      console.log(error);
    if(error){
        return res.status(500).json({'RESULT':false});
    }
     else{
         return res.status(200).json({'RESULT':true});
     }
  });
});

/* modle fetch data */
router.get('/DisplayModleData',function(req, res, next){
  if(!localStorage.getItem('token'))
  {
    return res.status(200).json('Session Expired Pls Login Again')

  }
  pool.query('select * from modle',function(error, result){
    if(error){
      res.status(500).json([]);
    }
     else{
       res.status(200).json(result);
     }
  })
})

/* model delete singal row */
router.post('/deleteRecord',function(req, res, next){
  if(!localStorage.getItem('token'))
  {
    return res.status(200).json('Session Expired Pls Login Again')

  }

  pool.query('delete from modle where modleid=?',[req.body.modle_id],function(error, result){
    if(error){
      res.status(500).json([])
    }
     else{
       res.status(200).json(result);
     }
  })
})

router.post('/model_data',function(req, res, next){
  if(!localStorage.getItem('token')){
    return res.status(200).json('Session Expired please Login Again')
  } 
  pool.query('select * from modle where brandid=?',[req.body.brandid],function(error, result){
    if(error){
      res.status(500).json([])
    }
     else{
       res.status(200).json(result);
     }
  })
})

module.exports = router;