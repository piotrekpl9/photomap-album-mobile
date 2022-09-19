import 'package:get_it/get_it.dart';
import 'package:photomapalbummobile/repository/album_repository.dart';
import 'package:photomapalbummobile/repository/album_repository_abstraction.dart';
import 'package:photomapalbummobile/repository/auth_repository.dart';
import 'package:photomapalbummobile/repository/auth_repository_abstraction.dart';
import 'package:photomapalbummobile/repository/profile_repository.dart';
import 'package:photomapalbummobile/repository/profile_repository_abstraction.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerLazySingleton<AlbumRepositoryAbstraction>(
      () => AlbumRepository());
  locator
      .registerLazySingleton<AuthRepositoryAbstraction>(() => AuthRepository());
  locator.registerLazySingleton<ProfileRepositoryAbstraction>(
      () => ProfileRepository());
}
