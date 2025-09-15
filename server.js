const express = require('express');
const app = express();
const port = 8080;

app.use(express.static('public')); // 'public' enthält die index.html

app.listen(port, () => {
  console.log(`CS2 Market läuft auf http://localhost:${port}`);
});
