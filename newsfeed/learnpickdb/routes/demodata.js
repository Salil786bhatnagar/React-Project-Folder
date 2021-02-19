var express = require('express');
var router = express.Router();
var data = require('./nodejs-parse-json.js');

    data.readFile('sample.json',function(error,data){
       // json data
       var jsonData = data;
 
       // parse json
       var jsonParsed = JSON.parse(jsonData);

 // access elements
 console.log(jsonParsed.publisherList[0].name + "'s office phone number is " + 
             jsonParsed.publisherList[0].registered_on + 
             jsonParsed.publisherList[0].id +
             jsonParsed.publisherList[0].exp +
             jsonParsed.publisherList[0].email);


    });
    





module.exports = router;