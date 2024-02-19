import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static const Color white = Colors.white;
  static const Color grey = Colors.grey;
  static const Color black = Colors.black;

  static const MaterialColor primary = MaterialColor(_primaryValue, <int, Color>{
  50: Color(0xFFE0E6E8),
  100: Color(0xFFB3C1C5),
  200: Color(0xFF80989E),
  300: Color(0xFF4D6E77),
  400: Color(0xFF264F59),
  500: Color(_primaryValue),
  600: Color(0xFF002B36),
  700: Color(0xFF00242E),
  800: Color(0xFF001E27),
  900: Color(0xFF00131A),
});
static const int _primaryValue = 0xFF00303C;

static const MaterialColor accent = MaterialColor(_accentValue, <int, Color>{
  50: Color(0xFF58C3FF),
  100: Color(0xFF58C3FF),
  200: Color(_accentValue),
  400: Color(0xFF009BF1),
  700: Color(0xFF008BD8),
});
static const int _accentValue = 0xFF25B1FF;
}
