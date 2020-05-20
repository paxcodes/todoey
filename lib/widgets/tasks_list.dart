import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';

class TasksList extends StatelessWidget {
  TasksList({this.tasks, this.taskBuilder});

  final List<Task> tasks;
  final Function taskBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: taskBuilder,
      itemCount: tasks.length,
    );
  }
}
