import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:planificador/assets/enums/project_states/project_states.dart';
import 'package:planificador/configs/types/defs.dart';
import 'package:planificador/models/project/project.dart';
import 'package:planificador/models/task/task.dart';

part 'project_event.dart';
part 'project_state.dart';

class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  ProjectBloc() : super(ProjectInitial());

  @override
  Stream<ProjectState> mapEventToState(
    ProjectEvent event,
  ) async* {
    on<SelectProject>((SelectProject event, Emitter<ProjectState> emit) {});
  }
}
