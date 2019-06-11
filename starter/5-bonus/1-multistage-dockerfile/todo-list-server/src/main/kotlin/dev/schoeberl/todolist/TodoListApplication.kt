package dev.schoeberl.todolist

import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication

@SpringBootApplication
class TodoListApplication

fun main(args: Array<String>) {
    SpringApplication.run(TodoListApplication::class.java)
}