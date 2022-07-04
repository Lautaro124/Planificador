import 'package:flutter/material.dart';
import 'package:planificador/screens/projects/utils/constants.dart';
import 'package:planificador/widgets/texts/primary_text.dart';

class CardCustom extends StatelessWidget {
  final String title;
  final Function? onPress;
  const CardCustom({Key? key, required this.title, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.elliptical(20, 20)),
      child: ElevatedButton(
        onPressed: onPress == null
            ? () {}
            : () {
                onPress!();
              },
        child: Center(
          child: title == addText ? const Icon(Icons.add) : TextPrimary(title),
        ),
      ),
    );
  }
}
