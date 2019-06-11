package dev.schoeberl.todolist

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestParam

@Controller
class TodoListController (
        private val entries: MutableList<String> = mutableListOf()
) {

    @GetMapping("/")
    fun showTodoList(model: MutableMap<String, Any>): String {
        model["entries"] = entries
        return "index"
    }

    @PostMapping("/create-entry")
    fun createEntry(
            @RequestParam(value = "entry", required = true) entry: String
    ): String {
        entries.add(entry)
        return "redirect:/"
    }
}