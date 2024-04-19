import 'package:flutter/material.dart';
import 'package:flutter_dynamic_color_poc/main.dart';

// class SwitcherThemeState extends State<SwitcherTheme> {
//   bool isTemaClaro = true;

//   void alternarTema() {
//     setState(() {
//       isTemaClaro = !isTemaClaro;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: isTemaClaro ? temaClaro(context) : temaEscuro(context),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Trocar Tema'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   alternarTema();
//                 },
//                 child: Text(
//                     'Alternar para ${isTemaClaro ? 'Tema Escuro' : 'Tema Claro'}'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SwitcherTheme {}

// ThemeData temaClaro(BuildContext context) {
//   return ThemeData.light();
// }

// ThemeData temaEscuro(BuildContext context) {
//   return ThemeData.dark();
// }
