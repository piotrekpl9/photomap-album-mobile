import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photomapalbummobile/repository/auth_repository_abstraction.dart';
import 'package:photomapalbummobile/repository/user_repository.dart';
import 'package:uuid/uuid.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepositoryAbstraction _authRepository;
  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;
  AuthBloc({
    required AuthRepositoryAbstraction authRepository,
  })  : _authRepository = authRepository,
        super(const AuthState.unknown()) {
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);

    _authenticationStatusSubscription = _authRepository.status
        .listen((status) => add(AuthenticationStatusChanged(status)));
  }

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    _authRepository.dispose();
    return super.close();
  }

  Future<void> _onAuthenticationStatusChanged(
      AuthenticationStatusChanged event, Emitter<AuthState> emitter) async {
    switch (event.status) {
      case AuthenticationStatus.unknown:
        emitter(const AuthState.unknown());
        break;
      case AuthenticationStatus.unauthenticated:
        emitter(const AuthState.unauthenticated());
        break;
      case AuthenticationStatus.authenticated:
        final token = await _authRepository.getToken();
        emitter(
          token != null
              ? const AuthState.authenticated()
              : const AuthState.unauthenticated(),
        );
        break;
    }
  }

  void _onAuthenticationLogoutRequested(
      AuthenticationLogoutRequested event, Emitter<AuthState> emitter) {
    _authRepository.logOut();
  }
}
