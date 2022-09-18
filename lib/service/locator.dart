import 'package:get_it/get_it.dart';
import 'package:photomapalbummobile/repository/album_repository.dart';
import 'package:photomapalbummobile/repository/auth_repository.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerLazySingleton<AlbumRepository>(() => AlbumRepository());
  locator.registerLazySingleton<AuthRepository>(() => AuthRepository());
}
