import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photomapalbummobile/consts/appstrings.dart';
import 'package:photomapalbummobile/repository/auth_repository_abstraction.dart';
import 'package:photomapalbummobile/screen/auth/bloc/auth/auth_bloc.dart';

import 'config/locator.dart';
import 'config/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const PhotoMapAlbumApp());
}

class PhotoMapAlbumApp extends StatelessWidget {
  const PhotoMapAlbumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => locator.get<AuthRepositoryAbstraction>(),
      child: BlocProvider(
        create: (context) =>
            AuthBloc(authRepository: locator.get<AuthRepositoryAbstraction>()),
        child: MaterialApp(
          title: AppStrings.appName,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(),
          routes: routes,
        ),
      ),
    );
  }
}
