import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photomapalbummobile/screen/auth/UI/presentation/login_default.dart';
import 'package:photomapalbummobile/screen/auth/bloc/login/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  static String route = "/";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Zaloguj się"))),
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state.status == LoginStatus.initial) {
            return const LoginDefault();
          }
          if (state.status == LoginStatus.loginFailure) {
            return const LoginDefault();
          }
          return const CircularProgressIndicator(
            color: Colors.red,
          );
        },
      ),
    );
  }
}
