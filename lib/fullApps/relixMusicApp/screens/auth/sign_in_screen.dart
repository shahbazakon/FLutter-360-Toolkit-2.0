import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/relixMusicApp/utils/colors.dart';
import 'package:prokit_flutter/fullApps/relixMusicApp/utils/string_extensions.dart';

import '../../components/app_scaffold.dart';
import '../../components/common_app_button.dart';
import '../../components/common_app_divider.dart';
import '../../components/gradient_text_widget.dart';
import '../../utils/common.dart';
import '../../utils/images.dart';
import '../account_setup/profile_screen.dart';
import 'forgot_password_screen.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();

  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  bool isRemember = true;

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

  // region widget
  Widget _buildTopWidget() {
    return Column(
      children: [
        Image.asset(app_logo, height: 80, width: 80),
        30.height,
        Text('Login to Your Account', style: boldTextStyle(size: 24, color: whiteColor)),
        25.height,
      ],
    );
  }

  Widget _buildFormWidget() {
    return Column(
      children: [
        AppTextField(
          controller: emailCont,
          focus: emailFocus,
          nextFocus: passwordFocus,
          textFieldType: TextFieldType.EMAIL,
          cursorColor: primaryMusicColor,
          textInputAction: TextInputAction.next,
          textStyle: primaryTextStyle(color: Colors.white),
          decoration: inputDecoration(context, label: 'Email', prefixIcon: ic_mail.iconImage(size: 10, color: Colors.white).paddingAll(13)),
        ),
        22.height,
        AppTextField(
          controller: passwordCont,
          focus: passwordFocus,
          textFieldType: TextFieldType.PASSWORD,
          textInputAction: TextInputAction.done,
          cursorColor: primaryMusicColor,
          suffixPasswordVisibleWidget: ic_show.iconImage(size: 10, color: Colors.grey).paddingAll(14),
          suffixPasswordInvisibleWidget: ic_hide.iconImage(size: 10, color: Colors.grey).paddingAll(14),
          textStyle: primaryTextStyle(color: Colors.white),
          decoration: inputDecoration(
            context,
            label: 'Password',
            prefixIcon: ic_lock.iconImage(size: 10, color: Colors.white).paddingAll(13),
          ),
        ),
        16.height,
      ],
    );
  }

  Widget _buildRememberWidget() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
              width: 16,
              child: Checkbox(
                activeColor: Colors.grey.withAlpha(40),
                checkColor: Colors.grey,
                value: isRemember,
                side: BorderSide(color: Colors.grey),
                visualDensity: VisualDensity.compact,
                shape: RoundedRectangleBorder(borderRadius: radius(4)),
                onChanged: (value) {
                  isRemember = value.validate();
                  setState(() {});
                },
              ),
            ),
            6.width,
            TextButton(
              onPressed: () {
                isRemember = !isRemember;
                setState(() {});
              },
              child: Text('Remember me', style: primaryTextStyle(color: isRemember ? whiteColor : null)),
            ),
          ],
        ),
        20.height,
        CommonAppButton(
          btnText: 'Sign in',
          onPressed: () {
            hideKeyboard(context);
            ProfileScreen().launch(context, pageRouteAnimation: PageRouteAnimation.Slide);
          },
        ),
        20.height,
        TextButton(
          onPressed: () {
            hideKeyboard(context);
            ForgotPasswordScreen().launch(context, pageRouteAnimation: PageRouteAnimation.Slide);
          },
          child: GradientTextWidget(text: 'Forgot the password?'),
        ),
        24.height,
        CommonAppDividerWidget(text: 'or continue with'),
        16.height,
      ],
    );
  }

  Widget _buildSocialWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: ic_facebook.iconImage(size: 24, color: Colors.white),
          onPressed: () {
            //
          },
        ),
        16.width,
        IconButton(
          icon: ic_google.iconImage(size: 24, color: Colors.white),
          onPressed: () {
            //
          },
        ),
        16.width,
        IconButton(
          icon: ic_apple.iconImage(size: 24, color: Colors.white),
          onPressed: () {
            //
          },
        ),
      ],
    );
  }

  // end region

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: commonAppBarWidget(context, title: ''),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTopWidget(),
            _buildFormWidget(),
            _buildRememberWidget(),
            _buildSocialWidget(),
            16.height,
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
