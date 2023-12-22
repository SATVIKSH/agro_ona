import 'package:agro_ona/utils/constants.dart';
import 'package:agro_ona/views/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: kLightThemeData,
      home: HomeScreen(),
    );
  }
}
