import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:photomapalbummobile/consts/appcolors.dart';
import 'package:photomapalbummobile/consts/appstrings.dart';
import 'package:photomapalbummobile/feature/auth/UI/widget/custom_label.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton(this.text, this.onSubmit, {super.key});

  final String text;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onSubmit,
      style: OutlinedButton.styleFrom(
          shape: const StadiumBorder(), backgroundColor: AppColors.mainColor),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomLabel(
          text: text,
          strokeWidth: 3,
          strokeColor: Colors.black,
          color: Colors.white,
        ),
      ),
    );
  }
}
