import 'package:flutter/material.dart';
import 'models/task.dart';
import 'widgets/task_item.dart';

class TaskBoardScreen extends StatefulWidget {
  @override
  _TaskBoardScreenState createState() => _TaskBoardScreenState();
}

class _TaskBoardScreenState extends State<TaskBoardScreen> {
  List<Task> tasks = [
    Task(
      title: 'Task 1',
      description: 'Your Personal task management and planning solution for planning your day, week & months',
      dateTime: DateTime(2023, 5, 25, 12, 55),
    ),
    Task(
      title: 'Task 2',
      description: 'Your Personal task management and planning solution for planning your day, week & months',
      dateTime: DateTime(2023, 5, 25, 12, 55),
    ),
    Task(
      title: 'Task 3',
      description: 'Your Personal task management and planning solution for planning your day, week & months',
      dateTime: DateTime(2023, 5, 25, 12, 55),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Board'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskItem(task: tasks[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addTask');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
