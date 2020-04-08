import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/code/tasks_data.dart';

class TaskTile extends StatelessWidget {

  final String taskTitle;
  final bool isChacked;
  final Function checkMe;
  final Function onLongPressCallback;

  TaskTile({this.isChacked,this.taskTitle,this.checkMe,this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallback,
      title: Text(taskTitle,style: TextStyle(decoration: isChacked?TextDecoration.lineThrough:null),),
      trailing: Checkbox(
        checkColor: Colors.lightBlueAccent,
        value: isChacked,
        onChanged:checkMe,
      ),
    );
  }
}