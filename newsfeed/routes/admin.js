var express = require('express');
var router = express.Router();
var pool = require('./pool.js');
var upload = require('./multer');

// Dahsbord
router.get('/Admin_dashbord',function(req, res, next){
    pool.query('select * from user_reg ',function(error, result){
    if(!req.session.ADMIN){
        res.redirect('newsfeed_adminLogin',{msg:''});   
    }
     else{
            res.render('newsfeed_adminPainal',{data:result})
       }
    }); 
});

//user display data
router.get('/admin_displayData',function(req, res, next){
    pool.query('select * from user_reg',function(error, result){
    if(!req.session.ADMIN){
        res.render('newsfeed_adminLogin',{msg:''});   
    }
     else{
         if(result.length==0){
            res.render('admin_userdisplayData',{data:'Data Not Found'});
         }
          else{
            res.render('admin_userdisplayData',{data:result});
          }
        
     }
 
 }); 
});

// latast newsfeed
router.get('/admin_LatestNews',function(req, res, next){
if(!req.session.ADMIN){
    res.render('newsfeed_adminLogin',{msg:''});   
}
 else{
    res.render('newsfeed_latestNews',{msg:''});    
 }
 
});

router.post('/admin_insertlatestNesw',upload.single('image'),function(req,res,next){
    pool.query('insert into latest_news(title,discraiption,date,image)values(?,?,?,?)',[req.body.title, req.body.discraiption, req.body.date, req.file.originalname],function(error, result){
        if(error){
            res.render('newsfeed_latestNews',{msg:'Record Not Submit'});   
         }
           else{
                res.render('newsfeed_latestNews',{msg:'Recored Submit Successfully'});
              }
         
        }) 
});

// politices
router.get('/admin_politices',function(req, res, next){
    if(!req.session.ADMIN){
        res.render('newsfeed_adminLogin',{msg:''});   
    }
     else{
        res.render('newsfeed_politices',{msg:''});
     }
    
   });

// politices insert data
router.post('/admin_insertPolitices',upload.single('image'),function(req, res, next){
  pool.query('insert into politices(title,discraiption,date,image)values(?,?,?,?)',[req.body.title,req.body.discraiption,req.body.date,req.file.originalname],function(error, result){
    if(error){
      res.render('newsfeed_politices',{msg:'Data not Insert...'});
    }
     else{
      res.render('newsfeed_politices',{msg:'Recored Submit Successfully'});
     }
  })
 
 });

// fashion
router.get('/admin_fashion',function(req, res, next){
    if(!req.session.ADMIN){
        res.render('newsfeed_adminLogin',{msg:''});   
    }
     else{
        res.render('newsfeed_fashion',{msg:''});
     }
    
   });

// fashion insert data
router.post('/admin_insertfashion',upload.single('image'),function(req, res, next){
  pool.query('insert into fashion(title,discraiption,date,image)values(?,?,?,?)',[req.body.title,req.body.discraiption,req.body.date,req.file.originalname],function(error, result){
    if(error){
      res.render('newsfeed_fashion',{msg:'Data not insert'});  
    }
     else{ 
      res.render('newsfeed_fashion',{msg:'Record Submit Successfully'});  
     }
  })
      
 });
   

// technology
router.get('/admin_technology',function(req, res, next){
    if(!req.session.ADMIN){
        res.render('newsfeed_adminLogin',{msg:''});   
    }
     else{
        res.render('newsfeed_technology',{msg:''});
     } 
    
   });
   
// technology insert data
router.post('/admin_inserttechnology',upload.single('image'),function(req, res, next){
 pool.query('insert into technology(title,discraiption,date,image)values(?,?,?,?)',[req.body.title,req.body.discraiption,req.body.date,req.file.originalname],function(error, result){
  if(!req.session.ADMIN){
      res.render('newsfeed_adminLogin',{msg:'data not found'});   
  }
   else{
      res.render('newsfeed_technology',{msg:'Record Submit Successfully'});
   } 
 });
 });


   // latest post
router.get('/admin_latestpost',function(req, res, next){
    if(!req.session.ADMIN){
        res.render('newsfeed_adminLogin',{msg:''});   
    }
     else{
        res.render('newsfeed_latestPost',{msg:''});
     }
    
   });

// latest post insert data
router.post('/admin_insertlatestpost',upload.single('image'),function(req, res, next){
  pool.query('insert into latest_post(title,discraiption,date,image)values(?,?,?,?)',[req.body.title,req.body.discraiption,req.body.date,req.file.originalname],function(error, result){
  if(!req.session.ADMIN){
      res.render('newsfeed_adminLogin',{msg:'data not found'});   
  }
   else{
      res.render('newsfeed_latestPost',{msg:'Record Submit Successfully'});
   }
  });
 });


// popural post
router.get('/admin_popularpost',function(req, res, next){
    if(!req.session.ADMIN){
        res.render('newsfeed_adminLogin',{msg:''});   
    }
     else{
        res.render('newsfeed_popularPost',{msg:''});
     }
   
   });

// popural insert post
router.post ('/admin_insertpopularpost',upload.single('image'),function(req, res, next){
  pool.query('insert into popural_post(title,discraiption,date,image)values(?,?,?,?)',[req.body.title,req.body.discraiption,req.body.date,req.file.originalname],function(error, result){
  if(!req.session.ADMIN){
      res.render('/newsfeed_popularPost',{msg:'data not found'});   
  }
   else{
      res.render('newsfeed_popularPost',{msg:'Record Submit Successfully'});
   }
  });
 });
   
// sports post
router.get('/admin_sports',function(req, res, next){
    if(!req.session.ADMIN){
        res.render('newsfeed_adminLogin',{msg:''});   
    }
     else{
        res.render('newsfeed_sports',{msg:''});
     }

});

// sports insert post
router.post('/admin_sports',upload.single('image'),function(req, res, next){
  pool.query('insert into sports(title,discraiption,date,image)values(?,?,?,?)',[req.body.title,req.body.discraiption,req.body.date,req.file.originalname],function(error, result){
  if(!req.session.ADMIN){
      res.render('newsfeed_adminLogin',{msg:'data not found'});   
  }
   else{
      res.render('newsfeed_sports',{msg:'Record Submit Successfully'});
   }
  });
});


// Blogs post
router.get('/admin_blogs',function(req, res, next){
  if(!req.session.ADMIN){
      res.render('newsfeed_blogs',{msg:''});   
  }
   else{
      res.render('newsfeed_blogs',{msg:''});
   }

});


// insert Blogs post
router.post('/admin_insertBlogs',upload.single('image'),function(req, res, next){
  pool.query('insert into blogs(discraiption,image)values(?,?)',[req.body.discraiption, req.file.originalname],function(error, result){
  if(!req.session.ADMIN){
      res.render('newsfeed_blogs',{msg:'Data not found'});   
  }
   else{
      res.render('newsfeed_blogs',{msg:'Record Submit Successfully'});
   }
  });
});



// admin login
router.get('/admin_Login',function(req, res, next){
    if(!req.session.ADMIN){
        res.redirect('newsfeed_adminLogin',{msg:''});   
    }
     else{
        res.render('newsfeed_adminLogin',{msg:''});   
     }
 
})

// chacklogin page
router.post('/admin_checkLogin',function(req, res, next){
pool.query('select * from admin where email=? and password=?',[req.body.email,req.body.password],function(error,result){
   if(error){
    res.render('newsfeed_adminLogin',{msg:'Server Error'});   
   }  
    else{
        if(result.length==0){
            res.render('newsfeed_adminLogin',{msg:'Invalide Email & Password'});
        }
         else if(result){
            pool.query('SELECT * FROM `user_reg`',function(error, result){
             req.session.ADMIN = result[0]
             res.render('newsfeed_adminPainal',{data:result,ADMIN:req.session.ADMIN});
            });
         }
         else if(result){
            pool.query("SELECT COUNT(*) as totalUser FROM `user_reg`",function(error,ouput){
                req.session.GENDER= ouput
                res.render('newsfeed_adminPainal',{data:req.session.GENDER});  
            });   
         }
         else if(result){
            pool.query('select count(*) as Totalgender, gender from user_reg group by gender',function(error, result){
                req.session.GENDER= result
                res.render('newsfeed_adminPainal',{data:req.session.GENDER,data:result});  
             });
         }
       }
    });
   });
  
// logout    
   router.get('/amdin_logout',function(req, res, next){
      req.session.destroy(); 
    res.render('newsfeed_adminLogin',{msg:''}); 
   })


// user view details
router.get('/userview_Data',function(req, res, next){
 pool.query('select * from user_reg where user_id=?',[req.query.u_id],function(error, result){
     if(error){
        res.render('newsfeed_userView',{data:'server error'});
     }
      else{
        if(result.length==0){
            res.render('newsfeed_userView',{data:'Record Not Found'});
        }
         else{
          res.render('newsfeed_userView',{data:result[0]});
          
         }
        
      }
 }); 

});

// user select data
router.get('/userselect_Data',function(req, res, next){
    pool.query('select * from user_reg where user_id=?',[req.query.edit_id],function(error, result){
        if(error){
           res.render('newsfeed_userselectData',{data:'server error'});
        }
         else{
           res.render('newsfeed_userselectData',{data:result[0]});
         }
       });
});

// user update data
router.get('/userupdata_Data',function(req, res, next){
  if(req.query.btn == 'edit')
  {
    pool.query('update user_reg set first_name=?,last_name=?,gender=?,address=?,contact=?,zip_code=?,place=?,email=? where user_id=?',[req.query.first_name,req.query.last_name,req.query.gender,req.query.address,req.query.contact,req.query.zip_code,req.query.place,req.query.email,req.query.update_id],function(error, result){
     if(error){
        res.render('newsfeed_userselectData',{data:'data not found'});
     }
      else{
        res.redirect('/admin_data/admin_displayData');
      }
    })
  }
    else{
        pool.query('delete from user_reg where user_id=?',[req.query.update_id],function(error, result){
            if(error){
                res.redirect('/admin_data/admin_displayData');
            }
             else{
               res.redirect('/admin_data/admin_displayData');
             }
           });
       }
   });

 // user delete record
//  router.get('/userdelete_Data',function(req, res, next){
//     pool.query('delete from user_reg where user_id=?',[req.query.user_id],function(error, result){
//      if(error){
//          res.redirect('/admin_data/admin_displayData');
//      }
//       else{
//         res.redirect('/admin_data/admin_displayData');
//       }
//     });
//  })
   

// update image

router.post('/userupdate_Image',upload.single('picture'),function(req, res, next){
   pool.query('update user_reg set picture=? where user_id=?',[req.file.originalname, req.body.edit_image],function(error, result){
    if(error){
        res.redirect('/admin_data/admin_displayData');
    }
     else{
        res.redirect('/admin_data/admin_displayData');
     }
   });
});

// message

router.get('/userMessage',function(req, res, next){
  pool.query("SELECT * FROM contact",function(error,result){
    if(error){
      res.render('newsfeed_message',{data:'data not found'});
    }
     else{
      res.render('newsfeed_message',{data:result,Total:result});
     }
  });
 
});


module.exports = router;