import 'package:flutter/material.dart';
import 'package:prokit_flutter/themes/theme15/utils/T15colors.dart';

class PasswordTextfieldComponent extends StatefulWidget {
  PasswordTextfieldComponent({Key? key, required this.focus}) : super(key: key);
  FocusNode focus;
  // FocusNode nextfocus;
  @override
  State<PasswordTextfieldComponent> createState() => _PasswordTextfieldComponentState();
}

class _PasswordTextfieldComponentState extends State<PasswordTextfieldComponent> {
  bool obscuretext = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: widget.focus,
      obscureText: obscuretext,
      decoration: InputDecoration(
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 32),
        suffixIcon: InkWell(
          onTap: () {
            obscuretext = !obscuretext;
            setState(() {});
          },
          child: Icon(
            obscuretext ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey,
          ),
        ),
        hintText: "Password",
        prefixIcon: InkWell(
          onTap: () {
            obscuretext = !obscuretext;
            setState(() {});
          },
          child: Icon(
            size: 30,
            color: Colors.grey,
            obscuretext ? Icons.lock_outline_rounded : Icons.lock_open_rounded,
          ),
        ),
        focusColor: primarycolor,
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: primarycolor)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onSubmitted: (value) {
        widget.focus.unfocus();
      },
    );
  }
}
