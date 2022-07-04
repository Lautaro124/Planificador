part of 'project_bloc.dart';

@immutable
abstract class ProjectEvent {}

class SelectProject extends ProjectEvent {
  final Project newProject;

  SelectProject(this.newProject);
}
