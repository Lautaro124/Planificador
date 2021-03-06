import 'package:flutter/material.dart';
import 'package:planificador/configs/sizes_screens/all_screen.dart';
import 'package:planificador/models/task/task.dart';
import 'package:planificador/screens/tasks/widgets/dialog_new_task.dart';

class CardAddTask extends StatelessWidget {
  final String tableName;
  final List<Task> tasks;
  const CardAddTask({Key? key, required this.tableName, required this.tasks})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => showSimpleDialog(
        context,
        tableName: tableName,
        tasks: tasks,
      ),
      child: SizedBox(
        width: withSizeScreen * 0.9,
        height: heightSizeScreen * 0.05,
        child: const Center(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
