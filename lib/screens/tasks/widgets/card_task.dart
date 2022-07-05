import 'package:flutter/material.dart';
import 'package:planificador/widgets/texts/primary_text.dart';

class TaskCard extends StatelessWidget {
  final String name;
  final String? description, userReferece;
  const TaskCard({
    Key? key,
    required this.name,
    this.description,
    this.userReferece,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListBody(
      children: [
        ListTile(
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
          title: TextPrimary(name),
          subtitle: TextPrimary(description ?? 'No hay descripciòn'),
        ),
      ],
    );
  }
}
