import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:raaz/config/colors.dart';
import 'package:raaz/config/template.dart';
import 'package:raaz/main.dart';

class AppTemplates {
  static Template browny = Template(
    lightTheme: brownyLightTheme,
    darkTheme: brownyDarkTheme,
    gradients: brownyGradients,
    systemUiOverlayStyle: brownySystemUiOverlayStyle,
  );
}

// Browny Template begin
ThemeData brownyLightTheme = ThemeData(
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
    },
  ),
  canvasColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  backgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.orange,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: AppColors.brown,
  ),
  colorScheme: ColorScheme(
    primary: AppColors.orange, //0.12th part is OverlayColor of textbutton.
    primaryVariant: AppColors.orange,
    secondary: AppColors.orange,
    secondaryVariant: AppColors.orange,
    surface: AppColors.orange,
    background: AppColors.orange,
    error: AppColors.orange,
    onPrimary: AppColors.orange,
    onSecondary:
        Colors.white, //FloatingActionButton foreground(Icons,Childrens) color.
    onSurface: AppColors.orange,
    onBackground: AppColors.orange,
    onError: AppColors.orange,
    brightness: Brightness.light,
  ),
  androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
);
ThemeData brownyDarkTheme = ThemeData();
List<LinearGradient> brownyGradients = [
  const LinearGradient(
    colors: [
      Color(0xFFf46b45),
      Color(0xFFeea849),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  const LinearGradient(
    colors: [
      Color(0xFF43cea2),
      Color(0xFF185a9d),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  const LinearGradient(
    colors: [
      Color(0xFF00C9FF),
      Color(0xFF92FE9D),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
];
SystemUiOverlayStyle brownySystemUiOverlayStyle = const SystemUiOverlayStyle(
  systemNavigationBarColor: Colors.white,
  statusBarColor: Colors.transparent,
  systemNavigationBarIconBrightness: Brightness.dark,
  statusBarIconBrightness: Brightness.dark,
);
//Browny Theme ends.
