import 'package:flutter/cupertino.dart';

class Task {
  String name;
  bool isDone;

  Task({@required this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}

class TaskData extends ChangeNotifier {
  List<Task> tasks;
  TaskData({this.tasks});

  int get taskCount => tasks.length;

  void toggleDone(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }
}
