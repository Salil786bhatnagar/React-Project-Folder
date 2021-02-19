var mysql=require('mysql')
var pool=mysql.createPool(
{ host:'localhost',
  user:'root',password:'',
  database:'learnpick',connectionLimit:100,
  multipleStatements:true
 });
 module.exports=pool;
 