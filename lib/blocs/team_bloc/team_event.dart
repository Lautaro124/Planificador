part of 'team_bloc.dart';

@immutable
abstract class TeamEvent {}

class AddNewTeam extends TeamEvent {
  final Project newProject;

  AddNewTeam({required this.newProject});
}
