//const clientdb = require("./connect.db");
module.exports = (app) => {
    app.get("/", (req, res) => {
        res.send("its ok!");
    });

    app.get("/api/user", (req, res) => {
        res.send("user its ok!");
    });

    app.get("/api/store", (req, res) => {
        res.send("store its ok!");
    });
};