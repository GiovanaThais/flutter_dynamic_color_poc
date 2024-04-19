import 'package:flutter/material.dart';
import 'package:flutter_dynamic_color_poc/app/themes/clean_theme.dart';
import 'package:flutter_dynamic_color_poc/app/themes/dark_theme.dart';
import 'package:flutter_dynamic_color_poc/app/themes/blue_theme.dart';
import 'package:flutter_dynamic_color_poc/app/themes/green_theme.dart';
import 'package:flutter_dynamic_color_poc/app/themes/purple_theme.dart';
import 'package:flutter_dynamic_color_poc/main.dart';

class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  late ThemeData temaAtual;

  @override
  void initState() {
    super.initState();
    temaAtual =
        cleanTheme(context); // Definindo o tema claro como padrão no initState
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _setCleanTheme() {
    setState(() {
      // Define o tema claro ao pressionar o botão
      temaAtual = cleanTheme(context);
    });
  }

  void _trocarTema(ThemeData novoTema) {
    setState(() {
      temaAtual = novoTema;
    });
  }

  void _setDarkTheme() {
    setState(() {
      // Define o tema escuro ao pressionar o botão
      temaAtual = darkTheme(context);
    });
  }

  void _setPurpleTheme() {
    setState(() {
      // Define o tema roxo ao pressionar o botão
      temaAtual = purpleTheme(context);
    });
  }

  void _setBlueTheme() {
    setState(() {
      // Define o tema azul ao pressionar o botão
      temaAtual = blueTheme(context);
    });
  }

  void _setGreenTheme() {
    setState(() {
      // Define o tema verde ao pressionar o botão
      temaAtual = greenTheme(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => _trocarTema(cleanTheme(context)),
            tooltip: 'Tema Claro',
            child: Icon(Icons.wb_sunny_rounded),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () => _trocarTema(darkTheme(context)),
            tooltip: 'Tema Escuro',
            child: Icon(Icons.brightness_3_rounded),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () => _trocarTema(purpleTheme(context)),
            tooltip: 'Tema Roxo',
            child: Text("R"),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () => _trocarTema(blueTheme(context)),
            tooltip: 'Tema Azul',
            child: Text('A'),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () => _trocarTema(greenTheme(context)),
            tooltip: 'Tema Verde',
            child: Text('V'),
          ),
          const SizedBox(
            height: 30,
          ),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
