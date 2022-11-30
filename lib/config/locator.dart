import 'package:get_it/get_it.dart';
import 'package:photomapalbummobile/feature/album/repository/album_repository.dart';
import 'package:photomapalbummobile/feature/album/repository/album_repository_abstraction.dart';
import 'package:photomapalbummobile/feature/auth/repository/auth_repository.dart';
import 'package:photomapalbummobile/feature/auth/repository/auth_repository_abstraction.dart';
import 'package:photomapalbummobile/feature/user/repository/user_repository.dart';
import 'package:photomapalbummobile/feature/user/repository/user_repository_abstraction.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerLazySingleton<AlbumRepositoryAbstraction>(
      () => AlbumRepository());
  locator
      .registerLazySingleton<AuthRepositoryAbstraction>(() => AuthRepository());
  locator
      .registerLazySingleton<UserRepositoryAbstraction>(() => UserRepository());
}
