import 'package:flutter/material.dart';
import 'package:flutter_dynamic_color_poc/main.dart';

import 'shared/custom_button_theme.dart';
import 'shared/custom_elevated_buttom_theme.dart';
import 'shared/custom_input_decoration_theme.dart';

ThemeData darkTheme(BuildContext context) {
  final primary = Color.fromARGB(255, 21, 20, 21);
  final secondary = Color.fromARGB(255, 67, 0, 253);
  final tertiary = primary.withOpacity(0.15);

  return ThemeData(
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      primary: primary,
      secondary: secondary,
      tertiary: tertiary,
      onBackground: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      foregroundColor: Colors.white,
      backgroundColor: primary,
    ),
    scaffoldBackgroundColor: Color.fromARGB(255, 34, 34, 34),
    inputDecorationTheme: CustomInputDecorationTheme(primary: primary),
    buttonTheme: CustomButtonTheme(),
    elevatedButtonTheme: CustomElevatedButtonTheme(),
  );
}
