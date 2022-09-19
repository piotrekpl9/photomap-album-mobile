part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class AuthorizeEvent extends AuthEvent {
  final String message;
  AuthorizeEvent(this.message);
}
