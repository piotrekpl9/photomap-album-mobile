import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photomapalbummobile/repository/auth_repository_abstraction.dart';
import 'package:photomapalbummobile/screen/auth/UI/login_screen.dart';
import 'package:photomapalbummobile/screen/auth/UI/register_screen.dart';
import 'package:photomapalbummobile/screen/auth/bloc/login/login_bloc.dart';

import '../repository/album_repository_abstraction.dart';
import '../repository/user_repository_abstraction.dart';
import '../screen/album/album_screen.dart';
import '../screen/album/bloc/album_bloc.dart';
import '../screen/home/bloc/home_bloc.dart';
import '../screen/home/home_screen.dart';
import '../screen/profile/bloc/profile_bloc.dart';
import '../screen/profile/profile_screen.dart';
import '../screen/settings/bloc/settings_bloc.dart';
import '../screen/settings/settings_screen.dart';
import 'locator.dart';

Map<String, Widget Function(BuildContext)> routes = {
  HomeScreen.route: (context) => RepositoryProvider(
        create: (context) => locator.get<AlbumRepositoryAbstraction>(),
        child: BlocProvider(
          create: (context) =>
              HomeBloc(context.read<AlbumRepositoryAbstraction>()),
          child: const HomeScreen(),
        ),
      ),
  AlbumScreen.route: ((context) => RepositoryProvider(
        create: (context) => locator.get<AlbumRepositoryAbstraction>(),
        child: BlocProvider(
          create: (context) =>
              AlbumBloc(context.read<AlbumRepositoryAbstraction>())
                ..add(const FetchDataEvent()),
          child: const AlbumScreen(),
        ),
      )),
  LoginScreen.route: (context) => BlocProvider(
        create: (context) =>
            LoginBloc(context.read<AuthRepositoryAbstraction>()),
        child: const LoginScreen(),
      ),
  RegisterScreen.route: (context) => const RegisterScreen(),
  ProfileScreen.route: (context) => RepositoryProvider(
        create: (context) => locator.get<UserRepositoryAbstraction>(),
        child: BlocProvider(
          create: (context) =>
              ProfileBloc(context.read<UserRepositoryAbstraction>()),
          child: const ProfileScreen(),
        ),
      ),
  SettingsScreen.route: (context) => RepositoryProvider(
        create: (context) => locator.get<UserRepositoryAbstraction>(),
        child: BlocProvider(
          create: (context) =>
              SettingsBloc(context.read<UserRepositoryAbstraction>()),
          child: const SettingsScreen(),
        ),
      ),
};
