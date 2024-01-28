import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/colors.dart';
import '../utils/constant.dart';

class BlurDialogWidget extends StatelessWidget {
  final Widget child;

  BlurDialogWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: ClipRRect(
          borderRadius: radius(DEFAULT_RADIUS),
          child: Container(
            color: dialogBackColor.withOpacity(0.6),
            padding: EdgeInsets.all(16),
            child: child,
          ),
        ),
      ),
    );
  }
}
