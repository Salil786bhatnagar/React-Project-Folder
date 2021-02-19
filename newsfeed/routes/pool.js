var mysql=require('mysql')
var pool=mysql.createPool(
{
  host:'localhost',
  user:'root',
  password:'',
  database:'newsfeed_db',
  connectionLimit:100,
  multipleStatements:true
 });

 module.exports=pool;
 

 