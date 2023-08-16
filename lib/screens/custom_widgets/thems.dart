import 'package:flutter/material.dart';

const primaryClr = Color(0xff0f12ff);
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr  = Color(0xFF424242);

class Themes{
  static final light = ThemeData(
    backgroundColor: Colors.white,
    primaryColor: darkGreyClr,
    brightness: Brightness.light
  );

  static final dark = ThemeData(
    backgroundColor: darkGreyClr,
    primaryColor: darkGreyClr,
    brightness: Brightness.dark
  );
}
