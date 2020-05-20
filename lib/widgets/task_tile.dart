import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function onChanged;
  TaskTile(this.task, {this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        task.name,
        style: TextStyle(
          fontSize: 20,
          decoration:
              task.isDone ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: task.isDone,
        activeColor: Colors.lightBlueAccent,
        onChanged: onChanged,
      ),
    );
  }
}
