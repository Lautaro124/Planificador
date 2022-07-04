part of 'project_bloc.dart';

@immutable
abstract class ProjectState {
  final Project project;

  const ProjectState(this.project);
}

class ProjectInitial extends ProjectState {
  ProjectInitial()
      : super(
          Project(
              name: 'dev',
              tasks: ProjectStates.values
                  .map((ProjectStates states) => {states.name: <Task>[]})
                  .toList()),
        );
}

class ProjectSetState extends ProjectState {
  final String newName;
  final TasksList<Task> newTasks;

  ProjectSetState({required this.newName, required this.newTasks})
      : super(Project(name: newName, tasks: newTasks));
}
