part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class LoginUserEvent extends UserEvent {
  final User user;

  LoginUserEvent(this.user);
}
