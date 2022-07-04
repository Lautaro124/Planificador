part of 'team_bloc.dart';

@immutable
abstract class TeamState {
  final String team;
  final List<Project> projects;

  const TeamState({required this.projects, required this.team});
}

class TeamInitial extends TeamState {
  TeamInitial() : super(team: 'Dev', projects: []);
}

class TeamSetState extends TeamState {
  final List<Project> newproject;
  final String sameTeam;

  const TeamSetState({required this.newproject, required this.sameTeam})
      : super(projects: newproject, team: sameTeam);
}
