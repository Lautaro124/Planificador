part of 'team_bloc.dart';

@immutable
abstract class TeamEvent {}

class AddNewProject extends TeamEvent {
  final Project newProject;

  AddNewProject({required this.newProject});
}

class ChangeProject extends TeamEvent {
  final Project newProject;

  ChangeProject(this.newProject);
}
