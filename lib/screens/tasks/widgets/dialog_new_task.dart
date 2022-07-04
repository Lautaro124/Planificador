import 'package:flutter/material.dart';
import 'package:planificador/widgets/dialog_generator/dialog_generator.dart';

void showSimpleDialog(BuildContext context) {
  final GlobalKey fomController = GlobalKey<FormState>();
  dialogGenerator(
    context,
    title: 'Crear tarea',
    children: [
      Form(
        key: fomController,
        child: Column(
          children: const [],
        ),
      ),
    ],
  );
}
