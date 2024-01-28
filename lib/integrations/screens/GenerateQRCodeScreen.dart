import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/dating/utils/DAColors.dart';
import 'package:prokit_flutter/main.dart';
import 'package:prokit_flutter/main/utils/AppWidget.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRCodeScreen extends StatefulWidget {
  static String tag = '/generate_qr_code';

  final bool isDirect;

  GenerateQRCodeScreen({this.isDirect = false});

  @override
  GenerateQRCodeScreenState createState() => GenerateQRCodeScreenState();
}

class GenerateQRCodeScreenState extends State<GenerateQRCodeScreen> {
  TextEditingController qrCont = TextEditingController();

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    changeStatusColor(appStore.scaffoldBackground!);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Generate QR Code', isDashboard: widget.isDirect),
      body: SingleChildScrollView(
        child: Column(
          children: [
            16.height,
            AppTextField(
              controller: qrCont,
              textFieldType: TextFieldType.OTHER,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                labelText: 'Write something',
                labelStyle: primaryTextStyle(),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: context.dividerColor, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: primaryColor, width: 1.0),
                ),
              ),
              onChanged: (v) {
                setState(() {});
              },
            ),
            16.height,
            QrImageView(
              data: qrCont.text.validate(),
              version: QrVersions.auto,
              size: 220.0,
              eyeStyle: QrEyeStyle(color: appStore.isDarkModeOn ? white : Colors.black),
            ).visible(qrCont.text.isNotEmpty),
          ],
        ).paddingAll(16),
      ),
    );
  }
}
