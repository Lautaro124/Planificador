import 'package:planificador/assets/enums/project_states/project_states.dart';
import 'package:planificador/configs/types/defs.dart';
import 'package:planificador/models/task/task.dart';

final TasksList<Task> emptyTaskValue = ProjectStates.values
    .map((ProjectStates states) => {states.name: <Task>[]})
    .toList();
