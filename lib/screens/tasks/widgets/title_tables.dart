import 'package:flutter/material.dart';
import 'package:planificador/assets/constants/sizes.dart';
import 'package:planificador/assets/themes/colors/colors.dart';
import 'package:planificador/configs/sizes_screens/all_screen.dart';
import 'package:planificador/widgets/texts/primary_text.dart';

Container tableTitle(String title) => Container(
      width: withSizeScreen,
      height: heightSizeScreen * 0.05,
      color: blue,
      child: Center(
        child: TextPrimary(
          title,
          size: textTitle,
          textColor: white,
          weight: FontWeight.bold,
        ),
      ),
    );
