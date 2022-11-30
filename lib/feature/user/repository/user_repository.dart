import 'dart:async';

import 'package:photomapalbummobile/feature/shared/model/user/user.dart';
import 'package:uuid/uuid.dart';

import 'user_repository_abstraction.dart';

class UserRepository extends UserRepositoryAbstraction {
  User? _user;

  @override
  Future<User?> getUser() async {
    return User(
        id: "1",
        username: "username",
        password: "password",
        isActive: true,
        createdAt: DateTime(1998, 12, 9));
  }
}
