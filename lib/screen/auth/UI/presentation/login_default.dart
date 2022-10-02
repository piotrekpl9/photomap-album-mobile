import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:photomapalbummobile/consts/appstrings.dart';
import 'package:photomapalbummobile/screen/auth/UI/widget/login_form_field.dart';

class LoginDefault extends StatefulWidget {
  const LoginDefault({Key? key}) : super(key: key);

  @override
  State<LoginDefault> createState() => _LoginDefault();
}

class _LoginDefault extends State<LoginDefault> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100),
            child: Center(
                child: Text(
              "Witaj, zaloguj się aby przejść do aplikacji",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )),
          ),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LoginFormField(
                  fieldLabel: AppStrings.login,
                ),
                LoginFormField(
                  fieldLabel: AppStrings.password,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        primary: Colors.blue,
                        minimumSize: const Size.fromHeight(50)),
                    child: const Text(AppStrings.signIn),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        primary: Colors.blue,
                        minimumSize: const Size.fromHeight(50)),
                    child: const Text(AppStrings.signUp),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
