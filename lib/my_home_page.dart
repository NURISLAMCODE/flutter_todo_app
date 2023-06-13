import 'package:flutter/material.dart';
import 'package:flutter_todo_app/data.dart';
import 'package:flutter_todo_app/new_task_page.dart';
import 'package:flutter_todo_app/todo_card_widget.dart';
import 'package:flutter_todo_app/todo_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (child) => NewTaskPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("TODO: Pending"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => popUpMenuItem
                .map(
                  (e) => PopupMenuItem(
                    child: Text(e),
                  ),
                )
                .toList(),
          ),
        ],
      ),
      body: ListView(
        children: [
          TodoCardWidget(
            todoModel: TodoModel(
                status: false,
                taskName: "Task1",
                dueDate: "2023-01-01",
                type: "Shopping"),
          ),
          TodoCardWidget(
            todoModel: TodoModel(
                status: true,
                taskName: "Task2",
                dueDate: "2023-01-01",
                type: "Wishlist"),
          ),
          TodoCardWidget(
            todoModel: TodoModel(
                status: false,
                taskName: "Task3",
                dueDate: "2023-01-01",
                type: "Work"),
          ),
          TodoCardWidget(
            todoModel: TodoModel(
                status: false,
                taskName: "Task4",
                dueDate: "2023-01-01",
                type: "Shopping"),
          ),
        ],
      ),
    );
  }
}
