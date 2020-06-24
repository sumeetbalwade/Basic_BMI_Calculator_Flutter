import 'package:basicbmicalculatorflutter/constants.dart';
import 'package:flutter/material.dart';

import 'input_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic BMI Calculator',
      theme: ThemeData.dark().copyWith(
          primaryColor: appcolorbg, scaffoldBackgroundColor: Scaffholdcolor),
      home: InputScreen(),
    );
  }
}
