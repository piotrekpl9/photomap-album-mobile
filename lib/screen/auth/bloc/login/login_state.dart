part of 'login_bloc.dart';

enum LoginStatus { initial, loginFailure }

class LoginState extends Equatable {
  final LoginStatus status;

  const LoginState(this.status);
  const LoginState.initial() : status = LoginStatus.initial;

  @override
  List<Object> get props => [status];
}
