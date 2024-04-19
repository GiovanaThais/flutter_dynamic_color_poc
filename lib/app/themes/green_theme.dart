import 'package:flutter/material.dart';

import 'shared/custom_button_theme.dart';
import 'shared/custom_elevated_buttom_theme.dart';
import 'shared/custom_input_decoration_theme.dart';

ThemeData greenTheme(BuildContext context) {
  final primary = Colors.green;
  final secondary = const Color.fromARGB(255, 121, 220, 172);
  final tertiary = primary.withOpacity(0.15);
  final primaryContainer = Color.fromARGB(
      255, 50, 204, 140); // Exemplo de cor, ajuste conforme necessário

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
    // fontFamily: fontePadrao,
    inputDecorationTheme: CustomInputDecorationTheme(primary: primary),
    buttonTheme: CustomButtonTheme(),
    elevatedButtonTheme: CustomElevatedButtonTheme(),
  );
}
