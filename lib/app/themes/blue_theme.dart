import 'package:flutter/material.dart';
import 'package:flutter_dynamic_color_poc/main.dart';

import 'shared/custom_button_theme.dart';
import 'shared/custom_elevated_buttom_theme.dart';
import 'shared/custom_input_decoration_theme.dart';

ThemeData blueTheme(BuildContext context) {
  const primary = Color.fromRGBO(0, 122, 255, 1);
  const secondary = Color.fromRGBO(0, 64, 128, 1);
  final tertiary = primary.withOpacity(0.15);
  const primaryContainer = Color(0xFF007AFF);

  return ThemeData(
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: primary,
      onPrimary: Colors.white,
      secondary: secondary,
      onSecondary: Colors.white,
      tertiary: tertiary,
      background: Colors.white,
      onBackground: Colors.black,
      primaryContainer: primaryContainer,
      error: Colors.red,
      onPrimaryContainer: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
    // fontFamily: fontePadrao,
    inputDecorationTheme: CustomInputDecorationTheme(primary: primary),
    buttonTheme: CustomButtonTheme(),
    elevatedButtonTheme: CustomElevatedButtonTheme(),
  );
}
