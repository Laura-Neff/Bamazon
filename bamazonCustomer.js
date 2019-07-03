require("dotenv").config();

var keys = require("./keys.js");

var MySQL = require("mysql");

var mysql = new MySQL(keys.myql);

var inquirer = require(inquirer);

var connection = mysql.createConnection({mysql});

console.log("Hi");



