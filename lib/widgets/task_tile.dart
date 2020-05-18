import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isCompleted;

  TaskTile(this.taskName, {this.isCompleted = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        taskName,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      trailing: Checkbox(
          value: isCompleted,
          onChanged: (bool value) {
            print(value);
          }),
    );
  }
}
