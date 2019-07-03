console.log('this is loaded');

exports.mysql = {
    user: process.env.MySQL_User,
    port: process.env.MySQL_Port,
    host: process.env.MySQL_Host,
    password: process.env.MySQL_Password,
    database: process.env.MySQL_Database
};
