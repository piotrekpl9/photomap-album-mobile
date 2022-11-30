import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photomapalbummobile/feature/album/album_screen.dart';
import 'package:photomapalbummobile/feature/album/bloc/album_bloc.dart';
import 'package:photomapalbummobile/feature/album/repository/album_repository_abstraction.dart';
import 'package:photomapalbummobile/feature/auth/UI/login_screen.dart';
import 'package:photomapalbummobile/feature/auth/UI/register_screen.dart';
import 'package:photomapalbummobile/feature/settings/bloc/settings_bloc.dart';
import 'package:photomapalbummobile/feature/settings/settings_screen.dart';
import 'package:photomapalbummobile/feature/user/bloc/profile_bloc.dart';
import 'package:photomapalbummobile/feature/user/profile_screen.dart';
import 'package:photomapalbummobile/feature/user/repository/user_repository_abstraction.dart';

import '../screen/home/bloc/home_bloc.dart';
import '../screen/home/home_screen.dart';
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
  LoginScreen.route: (context) => const LoginScreen(),
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
