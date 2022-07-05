import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:planificador/configs/sizes_screens/all_screen.dart';

Widget gridTables({required List<Widget> tables}) {
  return GridView.count(
    crossAxisCount: kIsWeb ? tables.length : 1,
    mainAxisSpacing: heightSizeScreen * 0.01,
    children: tables,
  );
}
