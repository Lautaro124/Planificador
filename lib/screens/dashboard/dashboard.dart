import 'package:flutter/material.dart';
import 'package:planificador/widgets/screen_generator/scafolt_generator.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return generateScreen(
      context,
      child: Column(
        children: const [Text('data')],
      ),
    );
  }
}
