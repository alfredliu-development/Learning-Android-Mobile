import 'package:first_project/main_hello.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      home: MainHello(),
    );
  }
}

// class HelloScreen extends StatelessWidget {
//   const HelloScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           "Hello, dunia",
//           style: TextStyle(
//             fontSize: 20.6,
//             fontWeight: FontWeight.bold
//           ),
//         ),
//       ),
//     );
//   }
// }