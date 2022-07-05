import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planificador/assets/themes/colors/colors.dart';
import 'package:planificador/blocs/project_bloc/project_bloc.dart';
import 'package:planificador/models/task/task.dart';
import 'package:planificador/screens/tasks/utils/texts.dart';
import 'package:planificador/screens/tasks/widgets/text_flied.dart';
import 'package:planificador/widgets/dialog_generator/dialog_generator.dart';
import 'package:planificador/widgets/texts/primary_text.dart';

String? nameTask, descriptionTask;
void showSimpleDialog(BuildContext context,
    {required String tableName, required List<Task> tasks}) {
  final ProjectBloc projectBloc =
      BlocProvider.of<ProjectBloc>(context, listen: false);
  final fomController = GlobalKey<FormState>();

  dialogGenerator(
    context,
    title: createTask,
    children: [
      Form(
        key: fomController,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              FieldFormCustorm(
                label: putTaskName,
                onChange: (String value) {
                  nameTask = value;
                },
                textArea: false,
              ),
              FieldFormCustorm(
                label: putDescription,
                onChange: (String value) {
                  descriptionTask = value;
                },
                textArea: true,
              ),
              ElevatedButton(
                onPressed: () {
                  if (!fomController.currentState!.validate()) return;

                  projectBloc.add(
                    AddTaskToProject(
                      newTasks: [
                        ...tasks,
                        Task(title: nameTask!, description: descriptionTask)
                      ],
                      tableName: tableName,
                    ),
                  );
                  Navigator.pop(context);
                },
                child: const TextPrimary(create),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: red,
                ),
                onPressed: () => Navigator.pop(context),
                child: const TextPrimary(cancel),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
