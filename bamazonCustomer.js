require("dotenv").config();

var mysql = require("mysql");

var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: process.env.MySQL_Host,
    user: process.env.MySQL_User,
    port: process.env.MySQL_Port,
    password: process.env.MySQL_Password,
    database: process.env.MySQL_Database
});

connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    afterConnection();
});

function afterConnection() {
    connection.query("SELECT * FROM products", function(err, res) {
        if (err) throw err;
        for(var i = 0; i < res.length; i++){
            console.log("----------------------");
            console.log("Product Id: " + res[i].item_id);
            console.log("Product Name: " + res[i].product_name);
            console.log("Department Name: " + res[i].department_name);
            console.log("Price ($): " + res[i].price);
            console.log("Stock Quantity: " + res[i].stock_quantity);
        }

        inquirer
        .prompt([
        {
        type: "input",
        message: "Please give the ID of the product you would like to buy.",
        name: "id"
        },
    // Here we create a basic password-protected text prompt.
        {
        type: "input",
        message: "How many units of the product would you like to buy?",
        name: "units"
        }])

        


        connection.end();
    });
}






