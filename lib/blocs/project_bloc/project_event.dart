part of 'project_bloc.dart';

@immutable
abstract class ProjectEvent {}

class SelectProject extends ProjectEvent {
  final Project newProject;

  SelectProject(this.newProject);
}

class AddTaskToProject extends ProjectEvent {
  final String tableName;
  final List<Task> newTasks;

  AddTaskToProject({required this.tableName, required this.newTasks});
}
