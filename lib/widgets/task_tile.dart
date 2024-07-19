import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  @override
  State<TasksTile> createState() => _TasksTileState();
}
class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          'This is a task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: TaskCheckbox(checkboxState: isChecked, toggleCheckboxState:  (bool? value) {
        setState(() {
          isChecked = value!;
        });
      }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {

  final bool checkboxState;
  final ValueChanged<bool?> toggleCheckboxState;

  TaskCheckbox({required this.checkboxState, required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.green,
      value:checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}