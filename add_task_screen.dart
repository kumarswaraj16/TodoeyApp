import 'package:flutter/material.dart';
import 'package:flutterapptodoey/model/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTextTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(
                20.0,
              ),
            ),
            Text(
              'Add New Task',
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w700,
                  fontSize: 40.0),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onSubmitted: (newText) {
                  newTextTitle = newText;
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
                color: Colors.lightBlueAccent,
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: () {
                  Provider.of<TaskData>(context,listen: false).addNewTask(newTextTitle);
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
