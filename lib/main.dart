import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planificador/assets/enums/navigation.dart';
import 'package:planificador/blocs/project_bloc/project_bloc.dart';
import 'package:planificador/blocs/team_bloc/team_bloc.dart';
import 'package:planificador/blocs/user/user_bloc.dart';
import 'package:planificador/screens/dashboard/dashboard.dart';
import 'package:planificador/screens/main/main_sceen.dart';
import 'package:planificador/screens/projects/project_screen.dart';
import 'package:planificador/screens/tasks/tasks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserBloc()),
        BlocProvider(create: (_) => TeamBloc()),
        BlocProvider(create: (_) => ProjectBloc())
      ],
      child: MaterialApp(
        title: 'Planificador Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: NavigationRoutes.main.name,
        routes: {
          NavigationRoutes.main.name: (_) => const MainScreen(),
          NavigationRoutes.dashboard.name: (_) => const Dashboard(),
          NavigationRoutes.projects.name: (_) => const ProjectScreen(),
          NavigationRoutes.tasks.name: (_) => const Tasks(),
        },
      ),
    );
  }
}
