import 'package:alpenarm/screens/login.dart';
import 'package:alpenarm/themes/light_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: LoginScreen(),
    );
  }
}
