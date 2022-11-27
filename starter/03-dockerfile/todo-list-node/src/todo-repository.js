const todos = [];

function createTodo(title, done) {
    todos.push({id: todos.length, title, done});
}

module.exports = { todos, createTodo };
