import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
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
            onPressed: () {},
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
