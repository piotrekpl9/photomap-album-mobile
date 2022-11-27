import 'package:flutter/material.dart';
import 'package:photomapalbummobile/consts/appcolors.dart';
import 'package:photomapalbummobile/consts/appstrings.dart';
import 'package:photomapalbummobile/feature/auth/UI/ui_logic/login_validators.dart';
import 'package:photomapalbummobile/feature/shared/validation_methods.dart';
import 'package:photomapalbummobile/feature/auth/UI/widget/login_form/shared_styles.dart';
import 'package:photomapalbummobile/feature/auth/model/login_credentials.dart';

class EmailInput extends StatefulWidget {
  EmailInput({Key? key, required this.dataDestination}) : super(key: key);

  LoginCredentials dataDestination;

  @override
  State<EmailInput> createState() => _LoginFormFieldState();
}

class _LoginFormFieldState extends State<EmailInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: AppColors.inputLabelColor),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: createLoginInputDecoration(AppStrings.email),
      validator: LoginValidators.emailValidator,
      onSaved: (newValue) => setState(() {
        widget.dataDestination.email = newValue;
      }),
    );
  }
}
