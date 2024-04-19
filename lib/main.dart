import 'package:flutter/material.dart';
import 'package:flutter_dynamic_color_poc/app/pages/page.dart';
import 'package:flutter_dynamic_color_poc/app/themes/clean_theme.dart';
import 'package:flutter_dynamic_color_poc/app/themes/dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: cleanTheme(context),
      darkTheme: darkTheme(context),
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}
