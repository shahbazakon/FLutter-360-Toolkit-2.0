import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/themes/theme15/components/elevatedbutton_component.dart';
import 'package:prokit_flutter/themes/theme15/components/login_textfield_component.dart';
import 'package:prokit_flutter/themes/theme15/components/password_textfield_component.dart';

import '../utils/T15colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool remember = false;

  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            80.height,
            Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(color: secondarycolor, borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  "images/theme15/signin_screen_image.png",
                  height: 80,
                  width: 80,
                ),
              ),
            ),
            32.height,
            Text("Welcome back!", style: boldTextStyle(size: 24)),
            8.height,
            Text("Enter your email and password", style: primaryTextStyle(color: textSecondaryColorGlobal, size: 18)),
            32.height,
            LoginTextfieldComponent(
              focus: emailFocus,
              nextFocus: passwordFocus,
              icon: Icon(Icons.email_outlined, size: 30, color: Colors.grey),
              hint_text: "Email or username",
            ),
            16.height,
            PasswordTextfieldComponent(focus: passwordFocus),
            4.height,
            Row(
              children: [
                8.width,
                Switch(
                  activeColor: primarycolor,
                  value: remember,
                  onChanged: (value) {
                    remember = value;
                    setState(() {});
                  },
                ),
                Expanded(child: Text("Remember", style: primaryTextStyle())),
                TextButton(
                  child: Text("Forgot password!", style: boldTextStyle(color: primarycolor, size: 14)),
                  onPressed: () {},
                ),
                8.width,
              ],
            ),
            16.height,
            ElevatedButtonComponent(
              text: "Sign In",
              toastText: 'Welcome!',
            ),
            16.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Don't have an account ?",
                    style: secondaryTextStyle(size: 14),
                    children: [TextSpan(text: " Sign Up", style: primaryTextStyle(color: primarycolor))],
                  ),
                ),
                Image.asset("images/theme15/icons/play.png", color: primarycolor, height: 15, width: 10)
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 32),
              child: Image.asset("images/theme15/signin_screen_image.png", height: 200, fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
