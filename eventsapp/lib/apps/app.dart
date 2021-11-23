import 'package:eventsapp/screens/events.dart';
import 'package:eventsapp/themes/light_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    precacheImage(
        const AssetImage('assets/images/events/event_1.jpeg'), context);
    precacheImage(
        const AssetImage('assets/images/events/event_2.jpg'), context);
    precacheImage(
        const AssetImage('assets/images/events/event_3.jpg'), context);
    precacheImage(
        const AssetImage('assets/images/events/event_4.jpg'), context);
    precacheImage(
        const AssetImage('assets/images/events/event_5.jpg'), context);

    return MaterialApp(
      theme: lightTheme,
      home: EventsScreen(),
    );
  }
}
