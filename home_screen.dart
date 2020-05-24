import 'package:flutter/material.dart';
import 'package:flutterapptodoey/screens/add_task_screen.dart';
import 'package:flutterapptodoey/widgets/task_list.dart';
import 'package:provider/provider.dart';
import 'package:flutterapptodoey/model/task_data.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          size: 50.0,
        ),
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) => AddTaskScreen());
        },
      ),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Your Tasks',
            style: TextStyle(
              color: Colors.greenAccent,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0,),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    20.0,
                  ),
                  topLeft: Radius.circular(
                    20.0,
                  ),
                ),
              ),
              child: TaskListView(Provider.of<TaskData>(context).taskList),
            ),
          ),
        ],
      ),
    );
  }
}
