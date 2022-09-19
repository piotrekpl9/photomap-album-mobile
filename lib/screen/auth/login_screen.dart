import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photomapalbummobile/screen/album/album_screen.dart';
import 'package:photomapalbummobile/screen/auth/bloc/auth_bloc.dart';
import 'package:photomapalbummobile/screen/home/home_screen.dart';
import 'package:photomapalbummobile/screen/settings/settings_screen.dart';

import '../profile/profile_screen.dart';

class LoginScreen extends StatefulWidget {
  static String path = "/";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text("Logowanie")),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                BlocProvider.of<AuthBloc>(context)
                    .add(AuthorizeEvent("message"));
                Navigator.of(context).pushNamed(SettingsScreen.path);
              },
              child: const Text("Zaloguj"),
            ),
          ),
        );
      },
    );
  }
}
