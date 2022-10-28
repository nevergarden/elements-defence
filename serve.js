const express = require("express");

const app = express();
const port = 3000;

express.static('/');

app.use(express.static('bin'));

app.listen(port, () => {
  console.log(`Client is listening on: ${port}`);
});
