import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskItem extends StatelessWidget {
  final Task task;

  TaskItem({required this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.title),
      subtitle: Text(task.description),
      trailing: Text(
        '${task.dateTime.hour}:${task.dateTime.minute} ${task.dateTime.day}th ${task.dateTime.month}, ${task.dateTime.year}',
      ),
    );
  }
}
