import 'package:flutter/material.dart';
import 'package:planificador/assets/themes/colors/colors.dart';
import 'package:planificador/widgets/texts/primary_text.dart';

class TaskCard extends StatelessWidget {
  final String name, description, userReferece;
  const TaskCard({
    Key? key,
    required this.name,
    required this.description,
    required this.userReferece,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            color: red,
            child: Center(
              child: TextPrimary(name),
            ),
          ),
          TextPrimary(description),
        ],
      ),
    );
  }
}
