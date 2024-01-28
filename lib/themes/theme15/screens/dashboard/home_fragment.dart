import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Screen", style: boldTextStyle(size: 24)),
      ),
    );
  }
}
