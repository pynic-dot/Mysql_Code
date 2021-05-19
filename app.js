var faker = require('faker');
var mysql = require('mysql');


var connection = mysql.createConnection({
	host : 'localhost',
	user : 'root',
	database : 'Join_us'
	
});

//'select curdate()'
// 'select 1+5'


// var q = 'INSERT INTO users (email) VALUES ("rusty_the_do718g@gmail.com")';
 
// connection.query(q, function (error, results, fields) {
//   if (error) throw error;
//   console.log(results);
// });

// var q = 'select * from users';
// connection.query(q, function(error,results,field){
// 	if (error) throw error;
// 	console.log(results);
// });

// connection.end();

// function hellow(){
// console.log('Hello world!');

// for(var i = 0; i < 5; i++)
// {
//   console.log("Amit");
// }
// }


// function GenerateAddress(){
// console.log(faker.internet.email());
// console.log(faker.date.past());
// console.log(faker.address.streetAddress());
// console.log(faker.address.city());
// console.log(faker.address.state());
// }
// GenerateAddress();



 //   Root User: root
 //   Database Name: mysql



// var person = {
//     email: faker.internet.email(),
//     created_at: faker.date.past()
// };
 
// connection.query('INSERT INTO users SET ?', person, function(err, result) {
//   if (err) throw err;
//   console.log(result);
// });

// connection.end();






// var data = [];
// for(var i = 0 ; i<500;i++){
// data.push([
//     faker.internet.email(),
//     faker.date.past()]
// );
// }
// var q = 'insert into users (email,created_at) values ?'
 
// connection.query(q, [data], function(err, result) {
//   console.log(err);
// 	console.log(result);
// });

// connection.end();