import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
            isChecked: widget.tasks[index].isDone,
            taskTile: widget.tasks[index].name,
            checkboxCallback: (checkboxState){
              setState(() {
                widget.tasks[index].toggleDone();
              });
            }
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
