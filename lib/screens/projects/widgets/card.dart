import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planificador/blocs/project_bloc/project_bloc.dart';
import 'package:planificador/models/project/project.dart';
import 'package:planificador/screens/projects/utils/texts.dart';
import 'package:planificador/widgets/texts/primary_text.dart';

class CardCustom extends StatelessWidget {
  final Project project;
  final Function? onPress;
  const CardCustom({Key? key, required this.project, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProjectBloc projectBloc =
        BlocProvider.of<ProjectBloc>(context, listen: false);

    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.elliptical(20, 20)),
      child: ElevatedButton(
        onPressed: onPress == null
            ? () {
                projectBloc.add(SelectProject(project));
              }
            : () {
                onPress!();
              },
        child: Center(
          child: project.name == addText
              ? const Icon(Icons.add)
              : TextPrimary(project.name),
        ),
      ),
    );
  }
}
