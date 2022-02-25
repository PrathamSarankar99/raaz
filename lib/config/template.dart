import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Template {
  final ThemeData lightTheme;
  final ThemeData darkTheme;
  final List<LinearGradient> gradients;
  final SystemUiOverlayStyle systemUiOverlayStyle;
  Template({
    required this.lightTheme,
    required this.darkTheme,
    required this.gradients,
    required this.systemUiOverlayStyle,
  });

  void initialize() {
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
