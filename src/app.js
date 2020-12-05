const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");

const app = express();

app.use(
    bodyParser.urlencoded({
        extended: true,
    })
);

app.use(
    cors({
        exposedHeaders: ["Authorization"],
    })
);
module.exports = app;