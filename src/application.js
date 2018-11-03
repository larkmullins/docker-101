'use strict';

var express = require('express');
var pg = require("pg");

// PostgreSQL Connection
var connectionString = "postgres://postgres:123@localhost:5432/postgres";

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
//   res.send('Hello world\n');
    // pg.connect(connectionString,function(err,client,done) {
    //     if(err){
    //         console.log("not able to get connection "+ err);
    //         res.status(400).send(err);
    //     } 
    //     client.query('SELECT * FROM fis where id = $1', [1],function(err,result) {
    //         done(); // closing the connection;
    //         if(err){
    //             console.log(err);
    //             res.status(400).send(err);
    //         }
    //         res.status(200).send(result.rows);
    //     });
    // });
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);