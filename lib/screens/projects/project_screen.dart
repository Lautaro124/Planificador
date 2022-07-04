import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planificador/assets/enums/navigation.dart';
import 'package:planificador/blocs/team_bloc/team_bloc.dart';
import 'package:planificador/models/project/project.dart';
import 'package:planificador/screens/projects/utils/constants.dart';
import 'package:planificador/screens/projects/utils/varables.dart';
import 'package:planificador/screens/projects/widgets/add_cart.dart';
import 'package:planificador/screens/projects/widgets/card.dart';
import 'package:planificador/widgets/screen_generator/scafolt_generator.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return generateScreen(
      context,
      place: NavigationRoutes.projects.placeTitle,
      child: BlocBuilder<TeamBloc, TeamState>(
        builder: (BuildContext context, TeamState state) => GridView.count(
          padding: EdgeInsets.all(paddingAll),
          crossAxisCount: columsGrid,
          mainAxisSpacing: marginWidgets,
          crossAxisSpacing: marginWidgets,
          children: [
            ...state.projects.map(
              (Project project) => CardCustom(project: project),
            ),
            addCart(context, onPress: changeView),
          ],
        ),
      ),
    );
  }

  void changeView() {
    setState(() => addingNewProject = !addingNewProject);
  }
}
