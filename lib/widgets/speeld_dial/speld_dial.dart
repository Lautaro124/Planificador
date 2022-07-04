import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

const String addTask = 'Agregar tarea',
    viewCalendar = 'Ver calendario',
    viewProgres = 'Ver progreso del dia';
String name = 'name', icon = 'icon', onTap = 'onTap';

List<Map<String, dynamic>> listSpeedDial = [
  {
    name: addTask,
    icon: Icons.add,
    onTap: () {
      log('Tarea agregada');
    },
  },
  {
    name: viewCalendar,
    icon: Icons.calendar_month,
    onTap: () {
      log('Show calendar');
    },
  },
  {
    name: viewProgres,
    icon: Icons.graphic_eq_outlined,
    onTap: () {
      log('Show production');
    },
  },
];

SpeedDial speedDial() => SpeedDial(
      animatedIcon: AnimatedIcons.add_event,
      children: listSpeedDial
          .map(
            (Map<String, dynamic> elemnt) => SpeedDialChild(
              child: Icon(elemnt[icon]),
              label: elemnt[name],
              onTap: elemnt[onTap],
            ),
          )
          .toList(),
    );
