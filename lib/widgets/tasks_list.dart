import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Eat',),
    Task(name: 'Sleep',),
    Task(name: 'Code',),
    Task(name: 'Hanging',),
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
            isChecked: tasks[index].isDone,
            taskTile: tasks[index].name,
            checkboxCallback: (checkboxState){
              setState(() {
                tasks[index].toggleDone();
              });
            }
        );
      },
      itemCount: tasks.length,
    );
  }
}
