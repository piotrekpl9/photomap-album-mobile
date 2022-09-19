import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../repository/auth_repository_abstraction.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepositoryAbstraction _authRepository;
  AuthBloc(this._authRepository) : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      _authRepository.printHello();
    });
  }
}
