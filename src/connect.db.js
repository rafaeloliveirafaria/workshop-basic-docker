require("dotenv").config();
const { Client } = require('pg');

const client = new Client();

client.connect();

client.query("SELECT * FROM sys_stores", (err, res) => {
    if (res) {
        console.log(res.rows);
    }
    if (err) {
        console.log(err);
    }
    client.end();
});
