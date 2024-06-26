import 'package:flutter/material.dart';
import 'package:healthyme/utils/hm_colors.dart';
import 'package:healthyme/utils/hm_typography.dart';
import 'package:healthyme/utils/ui_helpers.dart';

class HmBtn extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? color;
  final TextStyle? style;
  final String? label;
  final IconData? icon;
  final Color? iconColor;
  final double? radius;

  const HmBtn({
    super.key,
    this.onPressed,
    this.color,
    this.style,
    this.label,
    this.icon,
    this.iconColor,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(color: color ?? HMColors.white),
            borderRadius: BorderRadius.circular(radius ?? 6)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor ?? HMColors.white,
            ),
            UIHelpers.horizontalSpaceTiny,
            Text(
              label ?? "",
              style:
                  style ?? HmTextStyle.normal.copyWith(color: HMColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
