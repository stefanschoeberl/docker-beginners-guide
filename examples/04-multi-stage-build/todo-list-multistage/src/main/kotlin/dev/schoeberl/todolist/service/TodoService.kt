package dev.schoeberl.todolist.service

import dev.schoeberl.todolist.TodoRepository
import dev.schoeberl.todolist.domain.TodoItem
import jakarta.transaction.Transactional
import org.springframework.stereotype.Service

@Service
class TodoService (
    private val todoRepository: TodoRepository,
) {

    @Transactional
    fun getAllTodos(): List<TodoItem> {
        return todoRepository.findAllByOrderById()
    }

    @Transactional
    fun createTodo(title: String) {
        todoRepository.save(TodoItem(title, false))
    }

    @Transactional
    fun updateTodoStatus(id: Long, done: Boolean) {
        todoRepository.findById(id).ifPresent {
            it.done = done
        }
    }
}
