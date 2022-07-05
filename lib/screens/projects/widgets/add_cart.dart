import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planificador/assets/constants/empty_list_task.dart';
import 'package:planificador/assets/themes/colors/colors.dart';
import 'package:planificador/blocs/team_bloc/team_bloc.dart';
import 'package:planificador/models/project/project.dart';
import 'package:planificador/models/validations/input_validation.dart';
import 'package:planificador/screens/projects/utils/empty_detector.dart';
import 'package:planificador/screens/projects/utils/texts.dart';
import 'package:planificador/screens/projects/utils/varables.dart';
import 'package:planificador/screens/projects/widgets/card.dart';
import 'package:planificador/widgets/texts/primary_text.dart';

Widget addCart(BuildContext context, {required Function onPress}) {
  final TeamBloc teamBloc = BlocProvider.of<TeamBloc>(context, listen: false);

  void _addNewEvent() {
    detectEmptyValue(context, nameNewProject);

    teamBloc.add(AddNewProject(
        newProject: Project(name: nameNewProject, tasks: emptyTaskValue)));
    onPress();
    nameNewProject = '';
  }

  return !addingNewProject
      ? CardCustom(
          project: Project(name: addText, tasks: emptyTaskValue),
          onPress: onPress,
        )
      : ClipRRect(
          borderRadius: const BorderRadius.all(Radius.elliptical(20, 20)),
          child: Container(
            color: grey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: TextPrimary(setProjectName),
                    ),
                    onChanged: (String value) => nameNewProject = value,
                    validator: (String? value) =>
                        InputValidation(value).empty(),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: _addNewEvent,
                        child: const Icon(Icons.check),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: red,
                        ),
                        onPressed: () {
                          onPress();
                        },
                        child: const Icon(Icons.cancel),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
}
