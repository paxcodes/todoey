import 'package:flutter/material.dart';
import 'package:todoeyflutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ListOfTasks>(
      create: (context) => ListOfTasks(tasks: [
        Task(name: "Buy milk"),
        Task(name: "Buy eggs"),
        Task(name: "Buy bread"),
      ]),
      child: MaterialApp(
        theme: ThemeData(
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
          ),
        ),
        home: TasksScreen(),
      ),
    );
  }
}
