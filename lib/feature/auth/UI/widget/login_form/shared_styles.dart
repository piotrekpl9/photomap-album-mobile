import 'package:flutter/material.dart';
import 'package:photomapalbummobile/consts/appcolors.dart';

OutlineInputBorder createOutlineBorder(Color borderColor) => OutlineInputBorder(
      borderSide: BorderSide(color: borderColor, width: 2),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    );

InputDecoration createLoginInputDecoration(String fieldLabel) {
  OutlineInputBorder errorOutlineBorderStyle =
      createOutlineBorder(AppColors.dangerColor);
  OutlineInputBorder defaultOutlineBorderStyle =
      createOutlineBorder(AppColors.mainColor);

  return InputDecoration(
    label: Text(fieldLabel),
    focusedErrorBorder: errorOutlineBorderStyle,
    disabledBorder: errorOutlineBorderStyle,
    enabledBorder: defaultOutlineBorderStyle,
    focusedBorder: defaultOutlineBorderStyle,
    errorBorder: errorOutlineBorderStyle,
    border: defaultOutlineBorderStyle,
    labelStyle: const TextStyle(color: AppColors.inputLabelColor),
  );
}
