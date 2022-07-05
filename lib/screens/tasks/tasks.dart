import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planificador/blocs/project_bloc/project_bloc.dart';
import 'package:planificador/blocs/team_bloc/team_bloc.dart';
import 'package:planificador/models/task/task.dart';
import 'package:planificador/screens/tasks/utils/can_rebuild.dart';
import 'package:planificador/screens/tasks/widgets/grid_tables.dart';
import 'package:planificador/screens/tasks/widgets/table.dart';
import 'package:planificador/widgets/screen_generator/scafolt_generator.dart';

class Tasks extends StatelessWidget {
  const Tasks({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TeamBloc teamBloc = BlocProvider.of<TeamBloc>(context, listen: false);

    return generateScreen(
      context,
      child: BlocBuilder<ProjectBloc, ProjectState>(
          buildWhen: (ProjectState previous, ProjectState current) =>
              canRebuild(previous, current),
          builder: (BuildContext context, ProjectState state) {
            teamBloc.add(ChangeProject(state.project));

            log(state.project.name);
            return gridTables(
              tables: state.project.tasks
                  .map(
                    (Map<String, List<Task>> tableData) => table(
                      stateName: tableData.keys.first,
                      tasks: tableData.values.first,
                    ),
                  )
                  .toList(),
            );
          }),
    );
  }
}
