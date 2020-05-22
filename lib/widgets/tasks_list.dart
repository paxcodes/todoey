import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, listOfTasks, child) => ListView.builder(
        itemBuilder: (context, index) => TaskTile(
          listOfTasks.tasks[index],
          onChanged: (bool newValue) {
            listOfTasks.toggleDone(index);
          },
        ),
        itemCount: listOfTasks.taskCount,
      ),
    );
  }
}
