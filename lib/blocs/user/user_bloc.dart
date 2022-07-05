import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:planificador/models/user/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitial()) {
    on<LoginUserEvent>((LoginUserEvent event, Emitter<UserState> emit) =>
        emit(UserSetState(event.user)));
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    log('Error: $error ');
    log('Trace: $stackTrace');
    super.onError(error, stackTrace);
  }
}
