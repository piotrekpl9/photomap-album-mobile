enum AuthenticationStatus { unknown, authenticated, unauthenticated }

abstract class AuthRepositoryAbstraction {
  Stream<AuthenticationStatus> get status;

  Future<void> logIn({required String username, required String password});

  Future<String?> getToken();

  Future<void> saveToken();

  void logOut();

  void dispose();
}
