import 'package:flutter/material.dart';
import 'package:flutter_todo_app/todo_model.dart';

class TodoCardWidget extends StatelessWidget {
  final TodoModel todoModel;
  const TodoCardWidget({super.key, required this.todoModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Checkbox(
          onChanged: (value) {
            print(value);
          },
          value: todoModel.status,
        ),
        title: Text(todoModel.taskName),
        subtitle: Text(
          todoModel.dueDate,
          style: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Text(
          todoModel.type,
          style: TextStyle(
            color: todoTypeColor(todoModel.type),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

todoTypeColor(String value) {
  switch (value) {
    case "Shopping":
      return Colors.amber;
    case "Wishlist":
      return Colors.blue;
    case "Work":
      return Colors.red;
    default:
      return Colors.black;
  }
}
