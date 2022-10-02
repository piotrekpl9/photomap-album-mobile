import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginFormField extends StatefulWidget {
  final String fieldLabel;
  bool fieldFocussed = false;
  LoginFormField({Key? key, required this.fieldLabel}) : super(key: key);

  @override
  State<LoginFormField> createState() => _LoginFormFieldState();
}

class _LoginFormFieldState extends State<LoginFormField> {
  static const double topPadding = 20;
  static const double inputFieldRadius = 15;
  static const double inputFieldBorderWidth = 2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: topPadding),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: widget.fieldLabel,
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(inputFieldRadius),
                borderSide: const BorderSide(
                    width: inputFieldBorderWidth, color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(inputFieldRadius),
                borderSide: const BorderSide(
                  width: inputFieldBorderWidth,
                  color: Colors.blue,
                ),
              ),
            ),
            onTap: () => setState(() {
              widget.fieldFocussed = !widget.fieldFocussed;
            }),
          ),
        ],
      ),
    );
  }
}
