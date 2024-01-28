import 'package:flutter/material.dart';

import '../utils/colors.dart';

class GradientIconWidget extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;

  GradientIconWidget({this.icon, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          colors: [primaryMusicColor, secondaryColor.withRed(260)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0, 0.8],
        ).createShader(bounds);
      },
      child: Icon(icon != null ? icon : null, size: 24, color: iconColor ?? Colors.grey),
    );
  }
}
