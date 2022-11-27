const express = require('express');
const bodyParser = require('body-parser');
const todoRepository = require('./todo-repository');
const app = express();

process.on('SIGINT', function() {
    process.exit();
});

app.set('view engine', 'ejs');
app.set('views', './src/views');
app.use(express.static('node_modules/bootstrap/dist'));
app.use(bodyParser.urlencoded({extended: true}));
app.use('/', require('./routes'));

todoRepository.createTodo('Learn JS', true);
todoRepository.createTodo('Learn Docker', true);
todoRepository.createTodo('Deploy it!', false);

const port = process.env.PORT || 3000;
app.listen(port, function () {
    console.log(`App listening on port ${port}!`);
});
