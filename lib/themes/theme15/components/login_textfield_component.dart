import 'package:flutter/material.dart';
import 'package:prokit_flutter/themes/theme15/utils/T15colors.dart';

class LoginTextfieldComponent extends StatelessWidget {
  LoginTextfieldComponent({
    Key? key,
    required this.icon,
    required this.hint_text,
    required this.focus,
    required this.nextFocus,
  }) : super(key: key);
  String hint_text;
  Widget icon;
  FocusNode focus;
  FocusNode nextFocus;

  @override
  Widget build(BuildContext context) {
    //was wrapped with padding
    //added constraints
    return TextField(
      focusNode: focus,
      decoration: InputDecoration(
        hintText: hint_text,
        prefixIcon: icon,
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 32),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: primarycolor)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onSubmitted: (value) {
        focus.unfocus();
        FocusScope.of(context).requestFocus(nextFocus);
      },
    );
  }
}
