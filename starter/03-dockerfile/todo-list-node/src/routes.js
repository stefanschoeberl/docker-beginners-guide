const express = require('express');
const todoRepository = require("./todo-repository");
const utils = require("./utils");
const router = express.Router();

router.get('/', (req, res) => {
    res.render('index', {todos: todoRepository.todos});
});

router.post('/create-todo', (req, res) => {
    const title = req.body['todo-title'].trim();
    if (title.length > 0) {
        todoRepository.createTodo(title, false);
    }
    res.redirect('/');
});

router.post('/update-todo', (req, res) => {
    const id = parseInt(req.body['todo-id']);
    const done = utils.parseBool(req.body['todo-done']);
    const todo = todoRepository.todos.find(todo => todo.id === id);
    if (todo) {
        todo.done = done;
    }
    res.redirect('/');
});

module.exports = router;
