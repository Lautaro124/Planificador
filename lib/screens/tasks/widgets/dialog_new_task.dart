import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planificador/assets/themes/colors/colors.dart';
import 'package:planificador/blocs/project_bloc/project_bloc.dart';
import 'package:planificador/models/task/task.dart';
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
    title: 'Crear tarea',
    children: [
      Form(
        key: fomController,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              FieldFormCustorm(
                label: 'Ingrese el nombre de la tarea',
                onChange: (String value) {
                  nameTask = value;
                },
                textArea: false,
              ),
              FieldFormCustorm(
                label: 'Ingrese la descripcion',
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
                },
                child: const TextPrimary('Crear'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: red,
                ),
                onPressed: () => Navigator.pop(context),
                child: const TextPrimary('Cancelar'),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
