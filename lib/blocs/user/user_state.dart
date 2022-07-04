part of 'user_bloc.dart';

@immutable
abstract class UserState {
  final bool loginUser;
  final User? user;

  const UserState({required this.loginUser, this.user});
}

class UserInitial extends UserState {
  const UserInitial() : super(loginUser: false, user: null);
}

class UserSetState extends UserState {
  final User newUser;

  const UserSetState(this.newUser) : super(loginUser: true, user: newUser);
}
