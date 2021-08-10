import 'package:flutter/material.dart';

class TaskTitle extends StatefulWidget {
  @override
  _TaskTitleState createState() => _TaskTitleState();
}

class _TaskTitleState extends State<TaskTitle> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(isChecked, (bool? checkboxState) {
        setState(() {
          isChecked = checkboxState ?? true;
        });
      }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final void Function(bool?) callback;

  TaskCheckbox(this.checkboxState, this.callback);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlue,
      value: checkboxState,
      onChanged: callback,
    );
  }
}
