import 'dart:async';

import 'package:photomapalbummobile/feature/auth/repository/auth_repository_abstraction.dart';

class AuthRepository extends AuthRepositoryAbstraction {
  final _controller = StreamController<AuthenticationStatus>();

  @override
  void dispose() => _controller.close();

  @override
  Future<void> logIn(
      {required String username, required String password}) async {
    await Future.delayed(
      const Duration(milliseconds: 300),
    );
    _controller.add(AuthenticationStatus.authenticated);
  }

  @override
  void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  @override
  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  @override
  Future<String?> getToken() {
    // TODO: implement getToken
    throw UnimplementedError();
  }

  @override
  Future<void> saveToken() {
    // TODO: implement saveToken
    throw UnimplementedError();
  }
}
