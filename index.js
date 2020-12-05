require("dotenv").config();

const app = require("./src/app");
const routes = require("./src/routes"); 

routes(app);
const port = process.env.PORT
console.log("Executa com sucesso");

app.listen(port, () => console.log(`App init on port ${port}`));