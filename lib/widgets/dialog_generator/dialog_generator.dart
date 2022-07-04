import 'package:flutter/material.dart';
import 'package:planificador/widgets/texts/primary_text.dart';

void dialogGenerator(BuildContext context,
        {required String title, required List<Widget> children}) =>
    showDialog(
      context: context,
      builder: (BuildContext context) => SimpleDialog(
        title: TextPrimary(title),
        children: children,
      ),
    );
