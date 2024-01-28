import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class ScaffoldBackground extends StatelessWidget {
  final Color color;

  ScaffoldBackground({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width() * 1.7,
      height: context.height() * 0.56,
      decoration: boxDecorationDefault(
        shape: BoxShape.circle,
        color: color.withOpacity(0),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.12),
            blurRadius: 100,
            offset: Offset(15, 20),
            blurStyle: BlurStyle.normal,
            spreadRadius: 10,
          ),
        ],
      ),
    );
  }
}
