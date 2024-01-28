import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class AccountFragment extends StatelessWidget {
  const AccountFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Account Screen", style: boldTextStyle(size: 24)),
      ),
    );
  }
}
