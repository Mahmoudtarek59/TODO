import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/code/tasks.dart';

class TasksData extends ChangeNotifier{
  List<Tasks> tasks=[];

  addTask(Tasks task){
    tasks.add(task);
    notifyListeners();
  }
  checkMe(int index,bool check){
    tasks[index].isDone=check;
    notifyListeners();
  }

  removeTask(int index){
    tasks.removeAt(index);
    notifyListeners();
  }
}