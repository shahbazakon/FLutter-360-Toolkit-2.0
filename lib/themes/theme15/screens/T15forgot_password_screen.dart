import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/themes/theme15/components/elevatedbutton_component.dart';

import '../utils/T15common_widgets.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 16),
          Row(
            children: [
              16.width,
              backButton(context),
              Expanded(
                child: Text(
                  "Forgot Password",
                  style: boldTextStyle(size: 22),
                  textAlign: TextAlign.center,
                ),
              ),
              16.width
            ],
          ),
          18.height,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text(
              "Enter the email associated with your account and we'll send an email with instruction to reset your password",
              style: primaryTextStyle(color: textSecondaryColorGlobal, size: 14),
            ),
          ),
          8.height,
          textField(
            hintText: 'Email Address',
            focusNode: FocusNode(),
            textEditingController: TextEditingController(),
            boxConstraints: BoxConstraints(maxWidth: width - 32),
          ),
          24.height,
          ElevatedButtonComponent(text: "Send", toastText: "OTP has been sent to your email")
        ],
      ),
    );
  }
}
