var express = require("express");
var router = express.Router();
var pool = require("./pool.js");
var multer = require("./multer");
require("dotenv").config();
var LocalStorage = require("node-localstorage").LocalStorage;
localStorage = new LocalStorage("/scratch");
var jwt = require("jsonwebtoken");
function generateToken(ownername) {
  return jwt.sign(ownername, process.env.TOKEN_SECRET, { expiresIn: "10s" });
}

/* GET home page. */
router.post(
  "/outletInformation",
  multer.single("photograph"),
  function (req, res, next) {
    pool.query(
      "insert into outlets(firmname,ownername,mobile,phone,registrationno,gstno,address,state,city,location,photograph,emailid,password,description,averageprice,rating,lat,lng,status)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
      [
        req.body.firmname,
        req.body.ownername,
        req.body.mobile,
        req.body.phone,
        req.body.registrationno,
        req.body.gstno,
        req.body.address,
        req.body.state,
        req.body.city,
        req.body.location,
        req.file.filename,
        req.body.emailid,
        req.body.password,
        req.body.description,
        req.body.averageprice,
        req.body.rating,
        req.body.lat,
        req.body.lng,
        req.body.status,
      ],
      function (error, result) {
        if (error) {
          console.log(res);
          return res.status(500).json({ RESULT: false });
        } else {
          console.log(result);
          return res.status(200).json({ RESULT: true });
        }
      }
    );
  }
);

/* fetch the outlet data */
router.get("/outletalldata", function (req, res, next) {
  pool.query("select * from outlets", function (error, result) {
    if (error) {
      res.status(500).json([]);
    } else {
      res.status(200).json(result);
    }
  });
});

/* Outlate check the email and password */
router.post("/checklogin", function (req, res) {
  console.log(req.body);
  pool.query(
    "select * from outlets  where emailid=? and password=?",
    [req.body.emailid, req.body.password],
    function (err, result) {
      if (err) {
        // console.log(err)
        return res.status(500).json([]);
      } else {
        if (result.length == 1) {
          const token = generateToken({ ownername: result[0].ownername });
          localStorage.setItem("token", token);
          return res.status(200).json(result);
        } else {
          return res.status(200).json([]);
        }
      }
    }
  );
});

/* admin logout */
router.get("/logout", function (req, res) {
  localStorage.removeItem("token");
  return res.status(200).json(true);
});

/* checktoken  */
router.get("/chktoken", function (req, res) {
  if (!localStorage.getItem("token")) {
    return res.status(200).json(false);
  } else {
    return res.status(200).json(true);
  }
});

module.exports = router;
