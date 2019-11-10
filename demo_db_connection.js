var mysql = require('mysql');
var db = 'UCSDSocial';

var connection = mysql.createConnection({
  host     : "beacon.cx82s6pkrof3.us-east-1.rds.amazonaws.com",
  user     : "root",
  password : "Beacon110",
  port     : "3306"
});

connection.connect(function(err) {
	if(err) {
        console.error('Error connecting: ' + err.stack);
        return;
    }
    console.log('Connected as id ' + connection.threadId);
});
connection.query('USE UCSDSocial;');

connection.query('SELECT * FROM Events', db, function (error, results, fields) {
    console.log(error);
    console.log(results);
});

connection.end();