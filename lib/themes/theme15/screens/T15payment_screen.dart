import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/themes/theme15/utils/T15common_widgets.dart';

import '../utils/T15colors.dart';
import '../utils/T15comman.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String dropDownValue = 'India';
  bool saveData = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final height = context.height();
    final width = context.width();

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 16),
            Row(
              children: [
                16.width,
                backButton(context),
                Expanded(
                  child: Text(
                    "New Card",
                    style: boldTextStyle(size: 22),
                    textAlign: TextAlign.center,
                  ),
                ),
                16.width
              ],
            ),
            24.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                16.width,
                Text(
                  "Card Detail",
                  style: boldTextStyle(),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            16.height,
            Wrap(
              direction: Axis.vertical,
              spacing: 16,
              children: [
                textField(
                  hintText: "Card number",
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Image.asset(
                      "images/flixv2/logo/mastercard_logo.png",
                    ),
                  ),
                  boxConstraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 32),
                ),
                Wrap(
                  spacing: 18,
                  children: [
                    textField(
                      hintText: "Expire Date",
                      boxConstraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 2 - 32),
                      textEditingController: TextEditingController(),
                      focusNode: FocusNode(),
                    ),
                    textField(
                      hintText: "CCS/VCC",
                      boxConstraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 2 - 32),
                      textEditingController: TextEditingController(),
                      focusNode: FocusNode(),
                    )
                  ],
                ),
                textField(
                  hintText: "Card holder name",
                  focusNode: FocusNode(),
                  textEditingController: TextEditingController(),
                  boxConstraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 32),
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: context.cardColor,
                    constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 32),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: primarycolor),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  dropdownColor: context.cardColor,
                  focusColor: primarycolor,
                  value: dropDownValue,
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    size: 30,
                    color: Colors.grey.shade400,
                  ),
                  style: primaryTextStyle(),
                  items: myjson.map(
                    (Map map) {
                      return DropdownMenuItem<String>(
                        value: map["name"].toString(),
                        child: Row(
                          children: [
                            Image.asset(
                              map["image"],
                              width: 30,
                            ),
                            SizedBox(width: 16),
                            Text(
                              map["name"],
                              style: primaryTextStyle(color: Colors.grey.shade400),
                            ),
                          ],
                        ),
                      );
                    },
                  ).toList(),
                  onChanged: (String? newValue) {
                    setState(
                      () {
                        dropDownValue = newValue!;
                      },
                    );
                  },
                ),
              ],
            ),
            Row(
              children: [
                8.width,
                Transform.scale(
                  scale: 1.2,
                  child: Checkbox(
                    activeColor: primarycolor,
                    shape: CircleBorder(),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ),
                Text(
                  "Save card for future transaction",
                )
              ],
            ),
            8.height,
            SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              child: AppButton(
                text: "Save",
                textColor: Colors.white,
                color: primarycolor,
                onTap: () {
                  if (isChecked)
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Details saved',
                          style: primaryTextStyle(color: Colors.white),
                        ),
                        backgroundColor: primarycolor,
                        dismissDirection: DismissDirection.down,
                      ),
                    );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
