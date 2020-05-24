import 'package:flutter/foundation.dart';
import 'package:flutterapptodoey/model/tasks.dart';
class TaskData extends ChangeNotifier{
  List<Tasks> taskList = [
    Tasks(
      task: 'Buy Milk',
    ),
    Tasks(
      task: 'Buy Eggs',
    ),
    Tasks(
      task: 'Complete the Project',
    ),
  ];
  int get taskCount {
    return taskList.length;
  }
  void addNewTask(String newTask){
    taskList.add(Tasks(task: newTask));
    notifyListeners();
  }
  void updateTask(Tasks tasks){
    tasks.toggleDone();
    notifyListeners();
  }
  void deleteTask(Tasks tasks){
    taskList.remove(tasks);
    notifyListeners();
  }
}