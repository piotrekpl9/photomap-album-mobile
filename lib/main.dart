import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photomapalbummobile/repository/album_repository.dart';
import 'package:photomapalbummobile/repository/auth_repository.dart';
import 'package:photomapalbummobile/repository/profile_repository.dart';
import 'package:photomapalbummobile/screen/album/album_screen.dart';
import 'package:photomapalbummobile/screen/album/bloc/album_bloc.dart';
import 'package:photomapalbummobile/screen/auth/bloc/login/login_bloc.dart';
import 'package:photomapalbummobile/screen/auth/bloc/register/register_bloc.dart';
import 'package:photomapalbummobile/screen/auth/login_screen.dart';
import 'package:photomapalbummobile/screen/auth/register_screen.dart';
import 'package:photomapalbummobile/screen/home/bloc/home_bloc.dart';
import 'package:photomapalbummobile/screen/home/home_screen.dart';
import 'package:photomapalbummobile/screen/profile/bloc/profile_bloc.dart';
import 'package:photomapalbummobile/screen/profile/profile_screen.dart';
import 'package:photomapalbummobile/screen/settings/bloc/settings_bloc.dart';
import 'package:photomapalbummobile/screen/settings/settings_screen.dart';
import 'package:photomapalbummobile/service/locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const PhotoMapAlbumApp());
}

class PhotoMapAlbumApp extends StatelessWidget {
  const PhotoMapAlbumApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PhotoMapAlbum",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routes: {
        HomeScreen.path: (context) => RepositoryProvider(
              create: (context) => AlbumRepository(),
              child: BlocProvider(
                create: (context) => HomeBloc(context.read<AlbumRepository>()),
                child: const HomeScreen(),
              ),
            ),
        AlbumScreen.path: ((context) => RepositoryProvider(
              create: (context) => locator.get<AlbumRepository>(),
              child: BlocProvider(
                create: (context) => AlbumBloc(context.read<AlbumRepository>())
                  ..add(const FetchDataEvent()),
                child: const AlbumScreen(),
              ),
            )),
        LoginScreen.path: (context) => RepositoryProvider(
              create: (context) => locator.get<AuthRepository>(),
              child: BlocProvider(
                create: (context) => LoginBloc(context.read<AuthRepository>()),
                child: const LoginScreen(),
              ),
            ),
        RegisterScreen.path: (context) => RepositoryProvider(
              create: (context) => locator.get<AuthRepository>(),
              child: BlocProvider(
                create: (context) =>
                    RegisterBloc(context.read<AuthRepository>()),
                child: const RegisterScreen(),
              ),
            ),
        ProfileScreen.path: (context) => RepositoryProvider(
              create: (context) => ProfileRepository(),
              child: BlocProvider(
                create: (context) =>
                    ProfileBloc(context.read<ProfileRepository>()),
                child: const ProfileScreen(),
              ),
            ),
        SettingsScreen.path: (context) => RepositoryProvider(
              create: (context) => ProfileRepository(),
              child: BlocProvider(
                create: (context) =>
                    SettingsBloc(context.read<ProfileRepository>()),
                child: const SettingsScreen(),
              ),
            ),
      },
    );
  }
}
