import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/code/tasks_data.dart';
import 'package:todoeyflutter/code/tasks.dart';
import 'package:todoeyflutter/screens/add_task_screen.dart';
import 'package:todoeyflutter/widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.list,
                        size: 30,
                        color: Colors.lightBlueAccent,
                      ),
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Todoey',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '${Provider.of<TasksData>(context).tasks.length} Tasks',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: TasksList(),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => AddTaskScreen(),);
          },
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
        ),
    );
  }
}
