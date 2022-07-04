import 'package:flutter/material.dart';
import 'package:planificador/assets/enums/navigation.dart';
import 'package:planificador/widgets/texts/primary_text.dart';

const String name = 'name', icon = 'icon', onTap = 'onTap';
List<Map<String, dynamic>> listOptionsDrawer = [
  {
    name: 'Home',
    icon: Icons.home,
    onTap: NavigationRoutes.dashboard.name,
  },
  {
    name: 'Proyectos',
    icon: Icons.production_quantity_limits,
    onTap: NavigationRoutes.projects.name,
  },
  {
    name: 'Tareas',
    icon: Icons.production_quantity_limits,
    onTap: NavigationRoutes.tasks.name,
  },
];

Drawer drawer() => Drawer(
      child: ListView.separated(
        itemCount: listOptionsDrawer.length,
        itemBuilder: (BuildContext context, int index) => listTile(
          context,
          name: listOptionsDrawer[index][name],
          iconData: listOptionsDrawer[index][icon],
          navigationRoute: listOptionsDrawer[index][onTap],
        ),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );

ListTile listTile(
  BuildContext context, {
  required String name,
  required IconData iconData,
  required String navigationRoute,
}) =>
    ListTile(
      title: TextPrimary(name),
      onTap: () {
        Navigator.pushNamed(context, navigationRoute);
      },
    );
