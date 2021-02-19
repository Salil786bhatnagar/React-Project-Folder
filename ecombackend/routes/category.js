
var express = require("express");
var router = express.Router();
var pool = require("./pool.js");
var multer = require("./multer");
var localStorage = require("node-localstorage").LocalStorage;
localStorage = new localStorage("/scratch");

/* insert record in categories */
router.post("/addnewrecord", multer.any(), function (req, res, next) {
  if (!localStorage.getItem("token")) {
    return res.status(200).json("Session Expired Pls Login Again");
  }
  pool.query(
    "insert into categories(categoryname,description,icon,ad,adstatus)values(?,?,?,?,?)",
    [
      req.body.categoryname,
      req.body.description,
      req.files[0].filename,
      req.files[1].filename,
      req.body.adstatus,
    ],
    function (err, result) {
      if (err) {
        console.log(res);
        return res.status(500).json({ RESULT: false });
      } else {
        console.log(result);
        return res.status(200).json({ RESULT: true });
      }
    }
  );
});

/* fetch the categories record */
router.get("/displayallData", function (req, res, next) {
  if (!localStorage.getItem("token")) {
    return res.status(200).json("Session Expired please Login Again");
  }

  pool.query("select * from categories", function (error, result) {
    if (error) {
      res.status(500).json([]);
    } else {
      res.status(200).json(result);
    }
  });
});

/* fetch category */
router.get("/fetchcategory", function (req, res, next) {
  pool.query("select * from categories", function (error, result) {
    if (error) {
      res.status(500).json([]);
    } else {
      res.status(200).json(result);
    }
  });
});

router.get("/fetchcategorybyadstatus", function (req, res) {
  pool.query(
    "select * from categories where adstatus='yes'",
    function (err, result) {
      if (err) {
        return res.status(500).json([]);
      } else {
        return res.status(200).json(result);
      }
    }
  );
});

/* delete categoris singal data */
router.post("/deleteRecord", function (req, res, next) {
  // if(!localStorage.getItem('token')){
  //   return res.status(200).json('Session Expired please Login Again')
  // }
  pool.query(
    "delete from categories where categoryid=?",
    [req.body.category_id],
    function (error, result) {
      if (error) {
        res.status(500).json([]);
      } else {
        res.status(200).json(result);
      }
    }
  );
});

/* fetch ad data */
router.get("/fetchaddata", function (req, res, next) {
  pool.query("select *  from categories ", function (error, result) {
    if (error) {
      res.status(500).json([]);
    } else {
      res.status(200).json(result);
    }
  });
});

/* update category data */
//  router.post('/editRecord',multer.any(),function(req,res,next)
// {   var  q='';
//    if(req.body.icon!='' && req.body.ad!='')
//    {
//     q='update categories set categoryname=?,description=?,icon=?,ad=?,adstatus=? where categoryid=?'
//     para=[req.body.categoryname,req.body.description,req.files[0].filename,req.files[1].filename,req.body.adstatus,req.body.categoryid]
//    }
//   else if(req.body.icon!='')
//   {
//     q='update categories set categoryname=?,description=?,icon=?,adstatus=? where categoryid=?'
//     para=[req.body.categoryname,req.body.description,req.files[0].filename,req.body.adstatus,req.body.categoryid]
//    }
//    else if(req.body.ad!='')
//    {
//      q='update categories set categoryname=?,description=?,ad=?,adstatus=? where categoryid=?'
//      para=[req.body.categoryname,req.body.description,req.files[0].filename,req.body.adstatus,req.body.categoryid]
//     }
//   else
//   {
//     q='update categories set categoryname=?,description=?,adstatus=? where categoryid=?'
//     para=[req.body.categoryname,req.body.description,req.body.adstatus,req.body.categoryid]
//    }

// pool.query(q,para,function(error,result){
// if(error){
//   console.log(error)
//   return res.status(500).json({'RESULT':false})
// }
// else
// {
//   return res.status(200).json({'RESULT':true})
// }

// })

// })

router.post("/editDataImage", multer.any(), function (req, res, next) {
  if (!localStorage.getItem("token")) {
    return res.status(200).json("Session Expired please Login Again");
  }
  console.log(req.body);
  var qry = "";
  if (req.body.icon != "" && req.body.ad != "") {
    qry =
      "update categories set categoryname=?,description=?,icon=?,ad=?,adstatus=? where categoryid=?";
    para = [
      req.body.categoryname,
      req.body.description,
      req.files[0].filename,
      req.files[1].filename,
      req.body.adstatus,
      req.body.categoryid,
    ];
  } else if (req.body.icon != "") {
    qry =
      "update categories set categoryname=?,description=?,icon=?,adstatus=? where categoryid=?";
    para = [
      req.body.categoryname,
      req.body.description,
      req.files[0].filename,
      req.body.adstatus,
      req.body.categoryid,
    ];
  } else if (req.body.ad != "") {
    qry =
      "update categories set categoryname=?,description=?,ad=?,adstatus=? where categoryid=?";
    para = [
      req.body.categoryname,
      req.body.description,
      req.files[0].filename,
      req.body.adstatus,
      req.body.categoryid,
    ];
  } else {
    qry =
      "update categories set categoryname=?,description=?,adstatus=? where categoryid=?";
    para = [
      req.body.categoryname,
      req.body.description,
      req.body.adstatus,
      req.body.categoryid,
    ];
  }

  pool.query(qry, para, function (error, result) {
    if (error) {
      return res.status(500).json({ RESULT: false });
    } else {
      return res.status(200).json({ RESULT: true });
    }
  });
});

module.exports = router;
