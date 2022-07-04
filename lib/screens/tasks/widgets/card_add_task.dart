import 'package:flutter/material.dart';
import 'package:planificador/configs/sizes_screens/all_screen.dart';

class CardAddTask extends StatelessWidget {
  const CardAddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
        width: withSizeScreen * 0.9,
        height: heightSizeScreen * 0.05,
        child: const Center(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
