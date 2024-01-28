import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../components/app_scaffold.dart';
import '../../components/common_app_button.dart';
import '../../components/gradient_text_widget.dart';
import '../../components/transparent_container_widget.dart';
import '../../utils/common.dart';
import '../../utils/images.dart';
import 'sign_in_screen.dart';
import 'sign_up_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    afterBuildCreated(() async {
      setStatusBarColor(Colors.transparent, statusBarBrightness: Brightness.light, statusBarIconBrightness: Brightness.light);
    });
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: commonAppBarWidget(context, title: ''),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(app_logo, height: 80, width: 80),
            30.height,
            Text('Let\'s you in', style: boldTextStyle(size: 24, color: whiteColor)),
            25.height,
            TransparentContainerWidget(context, text: 'Continue with Facebook', img: ic_facebook),
            22.height,
            TransparentContainerWidget(context, text: 'Continue with Google', img: ic_google),
            22.height,
            TransparentContainerWidget(context, text: 'Continue with Apple', img: ic_apple),
            30.height,
            Row(
              children: [
                Divider(color: dividerDarkColor, thickness: 0).expand(),
                8.width,
                Text('or', style: boldTextStyle(color: textSecondaryColorGlobal)),
                8.width,
                Divider(color: dividerDarkColor, thickness: 0).expand(),
              ],
            ),
            30.height,
            CommonAppButton(
              btnText: 'Sign in with password',
              onPressed: () => SignInScreen().launch(context, pageRouteAnimation: PageRouteAnimation.Slide),
            ),
            80.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t have an account?', style: primaryTextStyle(color: whiteColor)),
                TextButton(
                  onPressed: () {
                    hideKeyboard(context);
                    SignUpScreen().launch(context, pageRouteAnimation: PageRouteAnimation.Slide);
                  },
                  child: GradientTextWidget(text: 'Sign up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
