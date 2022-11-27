import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photomapalbummobile/consts/appcolors.dart';
import 'package:photomapalbummobile/consts/appstrings.dart';
import 'package:photomapalbummobile/feature/auth/UI/widget/submit_button.dart';

import 'widget/custom_label.dart';
import 'widget/login_form/login_form.dart';

class LoginScreen extends StatefulWidget {
  static String route = "/";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //CustomLabel
  static const double screenNameStrokeWidth = 3;
  static const EdgeInsets screenNamePadding =
      EdgeInsets.symmetric(vertical: 15);
  //Welcome message
  static const double welcomeMessageStrokeWidth = 2.5;
  static const double welcomeMessageFontSize = 26;
  //Login Form
  static const EdgeInsets loginFormPadding =
      EdgeInsets.symmetric(horizontal: 30.0);

  @override
  Widget build(BuildContext context) {
    // ZROBIĆ SPLASHSCREEN KTÓRY SOBIE SAM ZRESOLVUJE CZY JEST POTRZEBA LOGOWANIA, LOGINSCREEN Z JEDNYM STATEM, EKRAN GŁÓWNY Z CHECKIEM TOKENU W ONINIT
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: CustomLabel(
            text: AppStrings.login,
            strokeWidth: screenNameStrokeWidth,
            strokeColor: Colors.black,
            color: Colors.white,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.green],
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: screenNamePadding,
                child: Center(
                  child: CustomLabel(
                    fontSize: welcomeMessageFontSize,
                    text: AppStrings.welcome,
                    strokeWidth: welcomeMessageStrokeWidth,
                    strokeColor: Colors.black,
                    color: AppColors.mainColor,
                  ),
                ),
              ),
              const Padding(
                padding: loginFormPadding,
                child: LoginForm(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
