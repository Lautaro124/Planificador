import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:planificador/models/project/project.dart';

part 'team_event.dart';
part 'team_state.dart';

class TeamBloc extends Bloc<TeamEvent, TeamState> {
  TeamBloc() : super(TeamInitial()) {
    on<AddNewProject>((AddNewProject event, Emitter<TeamState> emit) {
      if (state.team.isEmpty) return;

      emit(
        TeamSetState(
          sameTeam: state.team,
          newproject: [
            ...state.projects,
            event.newProject,
          ],
        ),
      );
    });

    on<ChangeProject>((ChangeProject event, Emitter<TeamState> emit) {
      List<Project> newProjects = state.projects.map((Project project) {
        if (project.name == event.newProject.name) {
          return event.newProject;
        }
        return project;
      }).toList();

      emit(TeamSetState(sameTeam: state.team, newproject: newProjects));
    });
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    log('Error: $error, Trace: $stackTrace');
    super.onError(error, stackTrace);
  }
}
