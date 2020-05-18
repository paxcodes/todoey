import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
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
                  '12 Tasks',
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
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: ListView(
                padding:
                    EdgeInsets.only(left: 20, top: 44, right: 20, bottom: 34),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "Buy milk",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    trailing: Checkbox(
                        value: false,
                        onChanged: (bool value) {
                          print(value);
                        }),
                  ),
                  ListTile(
                    title: Text(
                      "Buy detergent",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    trailing: Checkbox(
                        value: false,
                        onChanged: (bool value) {
                          print(value);
                        }),
                  ),
                  ListTile(
                    title: Text(
                      "Buy eggs",
                      style: TextStyle(
                        fontSize: 20,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    trailing: Checkbox(
                        value: true,
                        onChanged: (bool value) {
                          print(value);
                        }),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
