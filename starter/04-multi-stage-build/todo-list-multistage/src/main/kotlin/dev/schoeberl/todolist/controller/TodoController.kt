package dev.schoeberl.todolist.controller

import dev.schoeberl.todolist.service.TodoService
import jakarta.servlet.http.HttpServletRequest
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody

@Controller
class TodoController (
    private val todoService: TodoService,
) {

    @GetMapping("/")
    fun index(model: Model): String {
        model.addAttribute("todos", todoService.getAllTodos())
        return "index"
    }

    @PostMapping("/create-todo")
    fun createTodo(request: HttpServletRequest): String {
        todoService.createTodo(request.getParameter("todo-title"))
        return "redirect:/"
    }

    @PostMapping("/update-todo")
    fun updateTodo(request: HttpServletRequest): String {
        val id = request.getParameter("todo-id").toLong()
        val done = request.getParameter("todo-done").toBoolean()
        todoService.updateTodoStatus(id, done)
        return "redirect:/"
    }
}
