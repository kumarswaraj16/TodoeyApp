import 'package:flutter/material.dart';
import 'package:flutterapptodoey/model/task_data.dart';
import 'package:flutterapptodoey/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'Todoey App',
        theme: ThemeData(
          primaryColor: Colors.blueGrey[900],
          scaffoldBackgroundColor: Colors.lightBlueAccent,
        ),
        home: HomeScreen(),
      ),
    );
  }
}

