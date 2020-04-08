import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/code/tasks.dart';
import 'package:todoeyflutter/code/tasks_data.dart';
import 'package:todoeyflutter/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(//form provider class
      builder: (context,taskdata,child){
        return ListView.builder(
          itemCount: taskdata.tasks.length,//Provider.of<TasksData>(context).tasks.length
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskdata.tasks[index].task,
              isChacked: taskdata.tasks[index].isDone,
              checkMe: (value) =>  Provider.of<TasksData>(context,listen: false).checkMe(index,value),
              onLongPressCallback: ()=>taskdata.tasks[index].isDone ? Provider.of<TasksData>(context,listen: false).removeTask(index):print("check first"),
            );
          },
        );
      },

    );
  }
}
