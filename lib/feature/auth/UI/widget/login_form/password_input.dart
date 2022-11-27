import 'package:flutter/material.dart';
import 'package:photomapalbummobile/consts/appcolors.dart';
import 'package:photomapalbummobile/consts/appstrings.dart';
import 'package:photomapalbummobile/feature/auth/UI/ui_logic/login_validators.dart';
import 'package:photomapalbummobile/feature/auth/UI/widget/login_form/shared_styles.dart';
import 'package:photomapalbummobile/feature/auth/model/login_credentials.dart';

class PasswordInput extends StatefulWidget {
  PasswordInput({Key? key, required this.dataDestination}) : super(key: key);

  LoginCredentials dataDestination;

  @override
  State<PasswordInput> createState() => _LoginFormFieldState();
}

class _LoginFormFieldState extends State<PasswordInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      style: const TextStyle(color: AppColors.inputLabelColor),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: createLoginInputDecoration(AppStrings.password),
      validator: LoginValidators.passwordValidator,
      onSaved: (newValue) => setState(() {
        widget.dataDestination.password = newValue;
      }),
    );
  }
}
