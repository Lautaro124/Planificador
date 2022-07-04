import 'package:flutter/material.dart';
import 'package:planificador/assets/constants/sizes.dart';
import 'package:planificador/assets/themes/colors/colors.dart';
import 'package:planificador/widgets/texts/primary_text.dart';

class Snack {
  static void showSnackbar(
    BuildContext context, {
    required String text,
    Color background = red,
    IconData? icon,
  }) {
    FocusScope.of(context).requestFocus(FocusNode());

    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Icon(
                icon ?? Icons.warning_amber,
                color: white,
              ),
            ),
            Flexible(
              flex: 2,
              child: TextPrimary(
                text,
                weight: FontWeight.bold,
                size: textTitle,
              ),
            ),
          ],
        ),
        backgroundColor: background,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
