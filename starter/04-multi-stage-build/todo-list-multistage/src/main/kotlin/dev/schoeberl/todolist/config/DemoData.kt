package dev.schoeberl.todolist.config

import dev.schoeberl.todolist.TodoRepository
import dev.schoeberl.todolist.domain.TodoItem
import org.springframework.boot.CommandLineRunner
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration

@Configuration
class DemoData {

    @Bean
    fun initData(todoRepository: TodoRepository) = CommandLineRunner {
        if (todoRepository.count() == 0L) {
            todoRepository.save(TodoItem("Learn Kotlin", true))
            todoRepository.save(TodoItem("Learn Docker", true))
            todoRepository.save(TodoItem("Deploy it!", false))
        }
    }
}
