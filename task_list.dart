import 'package:flutter/material.dart';
import 'package:flutterapptodoey/model/task_data.dart';
import 'package:flutterapptodoey/widgets/task_tile.dart';
import 'package:flutterapptodoey/model/tasks.dart';
import 'package:provider/provider.dart';

class TaskListView extends StatefulWidget {
  final List<Tasks> taskList;
  TaskListView(this.taskList);
  @override
  _TaskListViewState createState() => _TaskListViewState();
}
class _TaskListViewState extends State<TaskListView> {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return (TaskListTile(
              taskTitle: taskData.taskList[index].task,
              isChecked: taskData.taskList[index].isDone,
              toggleCheckBox: (bool checkBoxState) {
                taskData.updateTask(taskData.taskList[index]);
              },
              onLongPressed: (){
                taskData.deleteTask(taskData.taskList[index]);
              },
            ));
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
