import 'package:flutter/material.dart';
import 'package:flutter_dynamic_color_poc/main.dart';

import 'shared/custom_button_theme.dart';
import 'shared/custom_elevated_buttom_theme.dart';
import 'shared/custom_input_decoration_theme.dart';

ThemeData purpleTheme(BuildContext context) {
  final primary = Color.fromRGBO(124, 77, 255, 1);
  final secondary = Color.fromRGBO(86, 26, 255, 1);
  final tertiary = primary.withOpacity(0.15);
  final primaryContainer = const Color(0xFF5B32CC);

  return ThemeData(
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: primary,
      onPrimary: Colors.white,
      secondary: secondary,
      onSecondary: Colors.black,
      tertiary: tertiary,
      background: Colors.white,
      onBackground: Colors.black,
      primaryContainer: primaryContainer,
      error: Colors.red,
      onPrimaryContainer: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: CustomInputDecorationTheme(primary: primary),
    buttonTheme: CustomButtonTheme(),
    elevatedButtonTheme: CustomElevatedButtonTheme(),
  );
}
