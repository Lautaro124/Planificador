import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:planificador/models/project/project.dart';

part 'team_event.dart';
part 'team_state.dart';

class TeamBloc extends Bloc<TeamEvent, TeamState> {
  TeamBloc() : super(TeamInitial()) {
    on<AddNewTeam>((AddNewTeam event, Emitter<TeamState> emit) {
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
  }
}
