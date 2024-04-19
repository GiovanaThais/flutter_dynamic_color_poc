import 'package:flutter/material.dart';

ElevatedButtonThemeData CustomElevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
    ),
  );
}
