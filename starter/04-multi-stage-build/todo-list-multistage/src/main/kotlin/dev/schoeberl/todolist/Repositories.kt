package dev.schoeberl.todolist

import dev.schoeberl.todolist.domain.TodoItem
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface TodoRepository: JpaRepository<TodoItem, Long> {

    fun findAllByOrderById(): List<TodoItem>
}
