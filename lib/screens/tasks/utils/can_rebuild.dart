import 'package:planificador/blocs/project_bloc/project_bloc.dart';
import 'package:planificador/models/task/task.dart';

bool canRebuild(ProjectState previous, ProjectState current) {
  if (current.project.name.isEmpty) return true;

  bool canBuild = false;
  int count = 0;
  for (Map<String, List<Task>> oldTable in previous.project.tasks) {
    if (current.project.tasks[count].values.first.length !=
        oldTable.values.first.length) {
      canBuild = true;
    }
    count++;
  }

  return canBuild;
}
