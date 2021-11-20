import 'package:eventsapp/screens/events.dart';
import 'package:eventsapp/themes/light_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: EventsScreen(),
    );
  }
}
