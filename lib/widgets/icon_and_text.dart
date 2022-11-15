import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final bool isSpace;

  const IconAndText(
      {super.key,
      required this.icon,
      required this.text,
      required this.iconColor,
      this.isSpace = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: AppLayout.getWidth(20),
        ),
        Gap(AppLayout.getWidth(3)),
        Text(
          text,
          style: isSpace ? Styles.textStyle2 : Styles.textStyle1,
        ),
      ],
    );
  }
}
