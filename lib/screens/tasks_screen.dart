import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoeyflutter/widgets/tasks_list.dart';
import 'package:todoeyflutter/screens/add_task_screen.dart';
import 'package:todoeyflutter/models/task.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  final textController = TextEditingController();

  void onAddButtonSubmit() {
    String taskName = textController.text;
    Task newTask = Task(name: taskName);
  }

  @override
  Widget build(BuildContext context) {
    final List<Task> tasks = context.watch<ListOfTasks>().tasks;

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            // Simply wrapping the sheet with SingleChildScrollView will not
            // work because modal sheet is fixed to being "half" the screen
            // we need to set `isScrollControlled: true` to make the bottom
            // sheet's height--in combination with `SingleChildScrollView`--
            // be "flexible" according to the size of its contents.
            // From docs -- The isScrollControlled parameter specifies whether
            // this is a route for a bottom sheet that will utilize
            // DraggableScrollableSheet. If you wish to have a bottom sheet
            // that has a scrollable child such as a ListView or a GridView and
            // have the bottom sheet be draggable, you should set this parameter
            // to true.
            isScrollControlled: true,
            context: context,
            // Use a `SingleChildScrollView` widget to make sure the widgets
            // in the bottom sheet have enough space. Without using a
            // `SingleChildScrollView` and only adjusting the padding
            // using a `Container` or `Padding` widget will result in an
            // `Overflow` error.
            // SingleChildScrollView — A box in which a single widget can be
            // scrolled. This widget is useful when you have a single box that
            // will normally be entirely visible, for example a clock face in a
            // time picker, but you need to make sure it can be scrolled if the
            // container gets too small in one axis (the scroll direction).
            builder: (context) => SingleChildScrollView(
              // From docs: `viewInsets` -- The parts of the display that are
              // completely obscured by system UI, typically by the device's
              // keyboard. When a mobile device's keyboard is visible
              // `viewInsets.bottom` corresponds to the top of the keyboard.
              // https://api.flutter.dev/flutter/widgets/MediaQueryData-class.html
              // https://api.flutter.dev/flutter/widgets/MediaQueryData/viewInsets.html
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: AddTaskScreen(
                  onAddButtonSubmit: onAddButtonSubmit,
                  textController: textController),
            ),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(height: 10),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${tasks.length} Task${tasks.length == 1 ? "" : "s"}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
