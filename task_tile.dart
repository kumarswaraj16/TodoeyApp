import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function toggleCheckBox;
  final Function onLongPressed;
  TaskListTile({this.taskTitle, this.isChecked, this.toggleCheckBox, this.onLongPressed});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          color: Colors.blue[900],
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.white,
        checkColor: Colors.green,
        value: isChecked,
        onChanged: toggleCheckBox,
      ),
      onLongPress: onLongPressed,
    );
  }
}

