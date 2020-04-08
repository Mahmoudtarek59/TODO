import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/code/tasks_data.dart';
import 'package:todoeyflutter/screens/task_screen.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TasksData>(
      create: (context)=>TasksData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
