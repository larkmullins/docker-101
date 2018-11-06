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
  res.setHeader('Content-Type', 'application/json');
  res.send(JSON.stringify({ "message": "Hello Docker 101" }));
});

app.get('/fis', (req, res) => {
  pg.connect(connectionString,function(err,client,done) {
      if(err){
          console.log("not able to get connection "+ err);
          res.status(400).send(err);
      } 
      client.query('SELECT * FROM fis', [1],function(err,result) {
          done(); // closing the connection;
          if(err){
              console.log(err);
              res.status(400).send(err);
          }
          res.status(200).send(result.rows);
      });
  });
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);