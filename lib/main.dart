import 'package:flutter/material.dart';

import 'modules/age_calculator/age_calculator_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AgeCalculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}
