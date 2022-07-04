part of 'project_bloc.dart';

@immutable
abstract class ProjectEvent {}

class CreateNewProject extends ProjectEvent {
  final Project newProject;

  CreateNewProject(this.newProject);
}
