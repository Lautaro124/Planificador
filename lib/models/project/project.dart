import 'package:planificador/configs/types/defs.dart';
import 'package:planificador/models/task/task.dart';

class Project {
  final String name;
  final TasksList<Task>? tasks;

  Project({required this.name, this.tasks});
}
