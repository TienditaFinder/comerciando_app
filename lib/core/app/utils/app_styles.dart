import 'package:comerciando_app/core/app/constants/app_constants.dart';
import 'package:flutter/material.dart' show Color, FontWeight, TextStyle;

class AppStyles {
  static TextStyle _baseStyle(double size, FontWeight weight, [Color? color]) {
    return TextStyle(
      fontSize: size,
      fontWeight: weight,
      color: color,
      fontFamily: AppConstants.fontFamily,
    );
  }

  static TextStyle w400(double size, [Color? color]) {
    return _baseStyle(size, FontWeight.w400, color);
  }

  static TextStyle w500(double size, [Color? color]) {
    return _baseStyle(size, FontWeight.w500, color);
  }

  static TextStyle w600(double size, [Color? color]) {
    return _baseStyle(size, FontWeight.w600, color);
  }

  static TextStyle w700(double size, [Color? color]) {
    return _baseStyle(size, FontWeight.w700, color);
  }

  static TextStyle w800(double size, [Color? color]) {
    return _baseStyle(size, FontWeight.w800, color);
  }

  static TextStyle w900(double size, [Color? color]) {
    return _baseStyle(size, FontWeight.w900, color);
  }
}
