import 'package:eventsapp/view_models/event.dart';
import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  final EventModel eventModel;

  const EventScreen({Key? key, required this.eventModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [Image.asset(eventModel.imageLocation)],
        ),
      ),
    );
  }
}
