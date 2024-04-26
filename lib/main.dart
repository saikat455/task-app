import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/task_board_screen.dart';
import 'screens/add_task_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/taskBoard': (context) => TaskBoardScreen(),
        '/addTask': (context) => AddTaskScreen(),
      },
    );
  }
}
