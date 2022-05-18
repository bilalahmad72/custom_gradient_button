import 'package:custom_gredient_button/next_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Gradient Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NextScreen(),
    );
  }
}
