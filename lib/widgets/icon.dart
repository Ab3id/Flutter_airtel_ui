import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GlobalIcon extends StatelessWidget {
  final String icon;
  final Color iconColor;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry padding = const EdgeInsets.all(8);
  const GlobalIcon(
      {Key? key,
      required this.icon,
      padding,
      required this.iconColor,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: padding,
      icon: SvgPicture.asset(
        icon,
        color: iconColor,
      ),
      onPressed: onPressed ?? () {},
    );
  }
}
