import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Task> tasks = context.watch<ListOfTasks>().tasks;

    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(
        tasks[index],
        onChanged: (bool newValue) {
          context.read<ListOfTasks>().toggleDone(index);
        },
      ),
      itemCount: tasks.length,
    );
  }
}
