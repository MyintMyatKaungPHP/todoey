import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final ValueChanged<bool?> checkboxCallback;

  TasksTile({required this.isChecked, required this.taskTile, required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTile,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.green,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}