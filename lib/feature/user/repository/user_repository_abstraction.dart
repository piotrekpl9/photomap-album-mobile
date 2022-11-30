import '../../shared/model/user/user.dart';

abstract class UserRepositoryAbstraction {
  Future<User?> getUser();
}
