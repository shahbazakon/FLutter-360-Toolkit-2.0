import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../main.dart';
import '../utils/T15colors.dart';
import '../utils/T15common_widgets.dart';

class BottomSheetScreen extends StatefulWidget {
  BottomSheetScreen({Key? key}) : super(key: key);

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  late FocusNode emailFocus;
  late FocusNode phoneNumberFocus;
  String copyEmail = "";
  String copyNumber = "";
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      customModalSheet(context);
    });
    super.initState();
    emailFocus = FocusNode();
    phoneNumberFocus = FocusNode();
  }

  @override
  void dispose() {
    emailFocus.dispose();
    phoneNumberFocus.dispose();
    emailController.dispose();
    numberController.dispose();

    super.dispose();
  }

  void customModalSheet(BuildContext context) {
    showModalBottomSheet<void>(
      enableDrag: true,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 5,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
              ),
              24.height,
              textField(
                hintText: 'Email or Username',
                suffixIcon: IconButton(
                  onPressed: () {
                    copyEmail = emailController.text;
                    Clipboard.setData(ClipboardData(text: copyEmail));
                  },
                  icon: Icon(
                    Icons.copy,
                    color: primarycolor,
                  ),
                ),
              ),
              16.height,
              textField(
                hintText: 'Phone Number',
                suffixIcon: IconButton(
                  onPressed: () {
                    copyNumber = numberController.text;
                    Clipboard.setData(ClipboardData(text: copyNumber));
                  },
                  icon: Icon(Icons.copy, color: primarycolor),
                ),
              ),
              24.height,
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: primarycolor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 1, offset: Offset(1, 1)),
                        BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 1, offset: Offset(0, 1)),
                      ],
                    ),
                    child: Icon(
                      Icons.call,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  16.width,
                  AppButton(
                    text: 'Message',
                    textColor: Colors.white,
                    color: primarycolor,
                    onTap: () {},
                  ).expand(),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppButton(
          text: 'BottomSheet',
          onTap: () {
            customModalSheet(context);
          },
          textStyle: boldTextStyle(color: appStore.isDarkModeOn ? primarycolor : Colors.white),
          shapeBorder: OutlineInputBorder(
            borderSide: BorderSide(color: appStore.isDarkModeOn ? primarycolor : secondarycolor),
          ),
          color: appStore.isDarkModeOn ? context.cardColor : primarycolor,
        ),
      ),
    );
  }
}
/* ,*/
