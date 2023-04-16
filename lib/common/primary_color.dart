import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE7EEFD),
  100: Color(0xFFC3D5FA),
  200: Color(0xFF9BB9F6),
  300: Color(0xFF739DF2),
  400: Color(0xFF5588F0),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF316BEB),
  700: Color(0xFF2A60E8),
  800: Color(0xFF2356E5),
  900: Color(0xFF1643E0),
});

const int _primaryPrimaryValue = 0xFF3773ED;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFFABBBFF),
  700: Color(0xFF91A6FF),
});

const int _primaryAccentValue = 0xFFDEE4FF;
