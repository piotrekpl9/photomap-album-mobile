import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:photomapalbummobile/repository/auth_repository.dart';
import 'package:photomapalbummobile/repository/auth_repository_abstraction.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepositoryAbstraction _authRepository;

  LoginBloc(this._authRepository) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
