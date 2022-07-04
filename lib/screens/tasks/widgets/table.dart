import 'package:flutter/material.dart';
import 'package:planificador/assets/themes/colors/colors.dart';
import 'package:planificador/screens/tasks/widgets/card_add_task.dart';
import 'package:planificador/screens/tasks/widgets/title_tables.dart';

Widget table({required String stateName, required List<Widget> tasks}) {
  return Container(
    color: grey,
    child: Column(
      children: [
        tableTitle(stateName),
        Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...tasks,
            const CardAddTask(),
          ],
        ),
      ],
    ),
  );
}
