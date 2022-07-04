import 'package:flutter/material.dart';
import 'package:planificador/assets/constants/sizes.dart';
import 'package:planificador/widgets/texts/primary_text.dart';

const String titleApp = 'Planificador CTL';

AppBar appBar(String? place) => AppBar(
      title: Column(
        children: [
          const Text(titleApp),
          place != null
              ? TextPrimary(
                  place,
                  size: textTitle,
                )
              : const SizedBox(),
        ],
      ),
      centerTitle: true,
    );
