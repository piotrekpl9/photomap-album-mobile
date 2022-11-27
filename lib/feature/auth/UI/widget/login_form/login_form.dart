import 'package:flutter/material.dart';
import 'package:photomapalbummobile/consts/appcolors.dart';
import 'package:photomapalbummobile/consts/appstrings.dart';
import 'package:photomapalbummobile/feature/auth/UI/widget/login_form/email_input.dart';
import 'package:photomapalbummobile/feature/auth/UI/widget/login_form/password_input.dart';
import 'package:photomapalbummobile/feature/auth/UI/widget/submit_button.dart';
import 'package:photomapalbummobile/feature/auth/model/login_credentials.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  LoginCredentials loginCredentials = LoginCredentials();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          EmailInput(dataDestination: loginCredentials),
          const SizedBox(
            height: 20,
          ),
          PasswordInput(dataDestination: loginCredentials),
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SubmitButton(AppStrings.signIn, onSubmit)),
          ),
        ],
      ),
    );
  }

  void onSubmit() {
    final currentState = _formKey.currentState;
    if (currentState == null) return;
    if (currentState.validate()) {
      currentState.save();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              "Email: ${loginCredentials.email}, Password: ${loginCredentials.password}"),
        ),
      );
    }
  }
}
