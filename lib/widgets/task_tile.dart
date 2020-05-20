import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String taskName;

  TaskTile(this.taskName);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        widget.taskName,
        style: TextStyle(
          fontSize: 20,
          decoration:
              isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing:
          TaskCheckbox(isChecked: isCompleted, onChanged: _setCompletedStatus),
    );
  }

  void _setCompletedStatus(bool newValue) {
    setState(() {
      isCompleted = newValue;
    });
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({this.isChecked, this.onChanged});
  final bool isChecked;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      activeColor: Colors.lightBlueAccent,
      onChanged: onChanged,
    );
  }
}
