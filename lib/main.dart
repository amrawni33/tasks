import 'package:flutter/material.dart';
import 'package:tasks/modules/ui_screen_chosen/ui_screen1.dart';

import 'modules/age_calculator/age_calculator_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: UiScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
