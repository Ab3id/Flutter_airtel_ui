import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color white = Colors.white;
const Color black = Colors.black;
const Color DarkGrey = Color(0xFF2d3b5a);
const Color LightGrey = Color(0xFF64677a);
const Color LightBlue = Color(0xFF9fbee6);
const Color GreyForText = Color(0xFFc0c0c0);
const Color MainRed = Color(0xFFe62630);
const Color DarkRed = Color(0xFF88080d);
const Color MainBackground = Color(0xFFdadde4);
const Color Blue = Color(0xFF1ea1f2);

extension CustomThemeContext on BuildContext {
  ThemeData get themeData => ThemeData(
        textTheme: textTheme,
        primaryColor: white,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );

  TextTheme get textTheme => GoogleFonts.poppinsTextTheme(
        Theme.of(this).textTheme,
      );
}
