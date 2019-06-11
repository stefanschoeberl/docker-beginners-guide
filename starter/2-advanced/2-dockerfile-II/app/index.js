var express = require('express');
var app = express();

process.on('SIGINT', function() {
    process.exit();
});

app.get('/', function (req, res) {
  res.send('Hello World from Node.js inside Docker!');
});

var port = process.env.PORT || 3000

app.listen(port, function () {
  console.log(`App listening on port ${port}!`);
});