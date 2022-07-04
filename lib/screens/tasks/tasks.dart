import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planificador/blocs/project_bloc/project_bloc.dart';
import 'package:planificador/screens/tasks/utils/texts.dart';
import 'package:planificador/screens/tasks/widgets/grid_tables.dart';
import 'package:planificador/screens/tasks/widgets/table.dart';
import 'package:planificador/widgets/screen_generator/scafolt_generator.dart';

class Tasks extends StatelessWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return generateScreen(
      context,
      child: BlocBuilder<ProjectBloc, ProjectState>(
        builder: (BuildContext context, ProjectState project) => gridTables(
          tables: [
            table(stateName: init, tasks: []),
            table(stateName: bloqued, tasks: []),
            table(stateName: pending, tasks: []),
            table(stateName: finish, tasks: []),
          ],
        ),
      ),
    );
  }
}
