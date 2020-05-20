import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function onAddButtonSubmit;
  final TextEditingController textController;

  AddTaskScreen(
      {@required this.onAddButtonSubmit, @required this.textController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            controller: textController,
            autofocus: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
              color: Colors.lightBlueAccent,
              width: 5,
              style: BorderStyle.solid,
            ))),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(vertical: 15),
            color: Colors.lightBlueAccent,
            textColor: Colors.white,
            onPressed: () {
              onAddButtonSubmit();
              textController.clear();
              Navigator.pop(context);
            },
            child: Text(
              "Add",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
