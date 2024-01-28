import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class ViewAllLabel extends StatelessWidget {
  final String label;
  final String? trailingText;
  final VoidCallback? onTap;
  final int? labelSize;
  final bool isShowAll;
  final Color? trailingTextColor;
  final TextStyle? style;

  ViewAllLabel({required this.label, this.onTap, this.labelSize, this.isShowAll = true, this.trailingText, this.trailingTextColor, this.style});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: style ?? boldTextStyle(size: labelSize ?? 18, color: whiteColor)),
        if (isShowAll)
          TextButton(
            onPressed: () {
              onTap?.call();
            },
            child: Text(trailingText ?? 'View All', style: secondaryTextStyle(color: trailingTextColor ?? textSecondaryColorGlobal)),
          )
      ],
    );
  }
}
