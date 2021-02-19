var express = require("express");
var router = express.Router();
var pool = require("./pool.js");
var multer = require("./multer");
// var localStorage=require('node-localstorage').LocalStorage
// localStorage = new localStorage('/scratch')

router.post("/productitem_data", multer.any(), function (req, res, next) {
  pool.query(
    "insert into product_item(bander_id,categoryid,brandid,modleid,productname,description,price,offerprice,delivery,rating,color,offertype,stock,picture,ad,ad_status,vender_status)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
    [
      req.body.bander_id,
      req.body.categoryid,
      req.body.brandid,
      req.body.modleid,
      req.body.productname,
      req.body.description,
      req.body.price,
      req.body.offerprice,
      req.body.delivery,
      req.body.rating,
      req.body.color,
      req.body.offertype,
      req.body.stock,
      req.files[0].filename,
      req.files[1].filename,
      req.body.ad_status,
      req.body.vender_status,
    ],
    function (error, result) {
      if (error) {
        console.log(error);
        return res.status(500).json({ RESULT: false });
      } else {
        console.log(result);
        return res.status(200).json({ RESULT: true });
      }
    }
  );
});

router.get("/displayall", function (req, res, next) {
  pool.query(
    "select * from product_item",
    function (error, result) {
      if (error) {
        res.status(500).json([]);
      } else {
        console.log(req.body);
        res.status(200).json(result);
      }
    }
  );
});


router.get("/fetchproduct", function (req, res, next) {
  pool.query(
    "select P. *, false as cartstatus from product_item P",
    function (error, result) {
      if (error) {
        res.status(500).json([]);
      } else {
        console.log(result);
        res.status(200).json(result);
      }
    }
  );
});

/////////////////////////////////////////////// for user view ////////////////////////////////////////////////////

router.post("/listproductbycategory", function (req, res, next) {
  console.log(req.body);
  pool.query(
    "select P. *, false as cartstatus from product_item P where P.categoryid=?",
    [req.body.categoryid],
    function (error, result) {
      if (error) {
        res.status(500).json([]);
      } else {
        console.log(result);
        res.status(200).json(result);
      }
    }
  );
});

///////////////////////////////////////// user view ///////////////////////////////////////////////////////

router.post("/displaybyid", function (req, res, next) {
  console.log(req.body);
  pool.query(
    "select * from product_item where productid=?",
    [req.body.productid],
    function (error, result) {
      if (error) {
        res.status(500).json([]);
      } else {
        console.log(result);
        res.status(200).json(result);
      }
    }
  );
});

module.exports = router;
