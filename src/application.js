'use strict';

var express = require('express');
var pg = require("pg");

// PostgreSQL Connection
var connectionString = "postgres://fis:secret@database:5432";

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.setHeader('Content-Type', 'application/json');
  res.send(JSON.stringify({ "message": "Hello World!" }));
});

app.get('/fis', (req, res) => {
    const client = new pg.Client({
        connectionString: connectionString,
    })
    client.connect()

    client.query('SELECT * FROM fis', (err, results) => {
        res.setHeader('Content-Type', 'application/json');
        res.send(results.rows);
    })
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);