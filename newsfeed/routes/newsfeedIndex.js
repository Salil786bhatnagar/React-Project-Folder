var express = require('express');
var router = express.Router();
var pool = require('./pool.js');
var upload = require('./multer');
// index page
router.get('/News_feed',function(req, res, next){
  pool.query('select * from latest_news',function(error, result){
  if(!req.session.USER){
   res.redirect('/newsfeed_data/newsfeed_login')
  }
   else{
     if(error) {
      res.render('newsfeed_homePage',{data:'data not found'});
     }
     else{
          res.render('newsfeed_homePage',{data:result});
      }
    }
  });
    
});

// news feed contact form
router.get('/newsfeedContact',function(req, res, next){
  
  if(!req.session.USER){
    res.redirect('/newsfeed_data/newsfeed_login');
  }
   else{
        res.render('newsfeed_contact',{data:''});
      }
});

// news feed contact insert data 
router.post('/newsfeed_insertContact',function(req, res, next){
  pool.query('insert into contact(name,email,message)values(?,?,?)',[req.body.name,req.body.email,req.body.message],function(error, result){
  if(!req.session.USER){
    res.redirect('/newsfeed_data/newsfeed_login');
  }
   else{
     if(error){
      res.render('newsfeed_contact',{data:'data Not Submit'});
     }
      else{
        console.log(req);
        res.render('newsfeed_contact',{data:'Data Insert Successfully...'});
      }
   }
  });
});

// news feed users form
router.get('/newsfeedUsers',function(req, res, next){
  pool.query('select * from user_reg',function(error, result){
  if(!req.session.USER){
    res.redirect('/newsfeed_data/newsfeed_login');
  }
   else{
      if(error){
        res.render('newsfeed_users',{data:'data not found'});
      }
       else{
        res.render('newsfeed_users',{data:result});
       }
   }
  });
});


// user blogs
router.get('/newsfeed_blogs',function(req, res, next){
 pool.query('select * from blogs',function(error, result){
  if(!req.session.USER){
    res.redirect('/newsfeed_data/newsfeed_login');
  }
   else{
    if(error){
      res.render('blogs',{data:'data not found'});
    }
    else{
      res.render('blogs',{data:result})
     }
   } 
 }) 
 
})


// new latest post news
// router.get('/latestpost_News',function(req, res, next){
//   pool.query('select * from latest_post',function(error, result){ 
//   if(!req.session.USER){
//     res.redirect('/newsfeed_data/newsfeed_login');
//   }
//    else{
//      if(error){
//       res.render('latestPost',{data:'data not found'});
//      }
//       else{
//         res.render('latestPost',{data:result});
//       }
//    }
//   });
// });
router.get('/latestpost_News',function(req, res, next){
  pool.query('select * from latest_post',function(error, result){ 
  });
});

// papular news post
router.get('/papularpost_News',function(req, res, next){
  pool.query('select * from popural_post',function(error, result){ 
    if(!req.session.USER){
      res.redirect('/newsfeed_data/newsfeed_login');
    }
     else{
       if(error){
        res.render('papularPost',{data:'data not found'});
       }
        else{
          res.render('papularPost',{data:result});
        }
     }
    });
  
});


// sport news post
router.get('/sport_News',function(req, res, next){
  pool.query('select * from sports',function(error, result){
    if(!req.session.USER){
      res.redirect('/newsfeed_data/newsfeed_login');
    }
     else{

      if(error){
        res.render('sports_News',{data:'Data not found'});
      }
        else{
        res.render('sports_News',{data:result})
        }
      }   
   })
});


// fashion news post
router.get('/fashion_News',function(req, res, nest){
  pool.query('select * from fashion',function(error, result){
    if(!req.session.USER){
      res.redirect('/newsfeed_data/newsfeed_login');
    }
     else{

      if(error){
        res.render('fashions_News',{data:'Data not found'});
      }
        else{
        res.render('fashions_News',{data:result})
        }
      }   
   })
});


// technology news post
router.get('/technology_News',function(req, res, next){
  pool.query('select * from technology',function(error, result){
    if(!req.session.USER){
      res.redirect('/newsfeed_data/newsfeed_login');
    } 
     else{
      if(error){
        res.render('technologys_News',{data:'data not found'}); 
      }
        else{
          res.render('technologys_News',{data:result});
        }
      }   
   });
});


// Politics news post
router.get('/politics_News',function(req, res, next){
  pool.query('select * from politices',function(error, result){
    if(!req.session.USER){
      res.redirect('/newsfeed_data/newsfeed_login');
    } 
     else{ 
      if(error){
        res.render('politics_News',{data:'data not found'});
      }
        else{
          res.render('politics_News',{data:result});
        }
      }      
  });
  
});

// user newsfeed registration 
router.get('/Newsfeed_Reg',function(req, res, next){
    res.render('newsfeed_Ragistration',{msg:''});
});

//insert reg data
router.post('/Newsfeed_inserReg',upload.single('picture'),function(req, res, next){
 pool.query('insert into user_reg(first_name,last_name,gender,address,contact,zip_code,place,email,password,picture)values(?,?,?,?,?,?,?,?,?,?)',[req.body.first_name,req.body.last_name,req.body.gender,req.body.address,req.body.contact,req.body.zip_code,req.body.place,req.body.email,req.body.password,req.file.originalname],function(error,result){
  if(error){
    res.render('newsfeed_Ragistration',{msg:'Record fail...'});
  }
   else{
    res.render('newsfeed_Ragistration',{msg:'Record Submit Successfully...'});
   }
 })
  
});

// user login 
router.get('/newsfeed_login',function(req, res, next){
  res.render('newsfeed_login',{msg:''});
});


// user check login 
router.post('/newsfeed_loginchacked',function(req, res, next){
 pool.query("select * from user_reg where email=? AND password=?",[req.body.email,req.body.password],function(error,result){
   if(error){
    res.render('login',{msg:'server error'});
   }
    else{
       if(result.length==0){
         res.render('newsfeed_login',{msg:'invalid email and password'});
       }
        else if(result){
          pool.query('select * from latest_news',function(error, result){
            req.session.USER = result[0];
            res.render('newsfeed_homePage',{data:result,USER:req.session.USER});
          });
        }
    }
 });

});

// Logout
router.get('/newsfeed_logout',function(req, res, next){
  req.session.destroy();
  res.render('newsfeed_login',{msg:''});
});


module.exports = router;