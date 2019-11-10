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

/*connection.query('SELECT * FROM Events where EventID = 007;', db, function (error, results, fields) {
    console.log(error);
    console.log(results);
});*/

//create event
//connection.query("insert into Events VALUES ('010','AWS RDS Test', '001dic', 'danlam01', '2019-11-11', '10:00:00', NULL, False, 'Code', 'https://github.com/Beacon-UCSD', NULL);");

// this is pull the information by the id
connection.query('SELECT * FROM Events where EventID = 010;', db, function (error, results, fields) {
    console.log(error);
    console.log(results);
});

connection.query("UPDATE Events SET Description = 'This is a test' where EventID = 010");

connection.query('SELECT * FROM Events where EventID = 010;', db, function (error, results, fields) {
    console.log(error);
    console.log(results);
});


connection.end();