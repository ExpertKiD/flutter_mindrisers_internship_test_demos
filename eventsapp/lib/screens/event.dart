import 'package:eventsapp/view_models/event.dart';
import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  final EventModel eventModel;
  final String imageTag;

  const EventScreen(
      {Key? key, required this.eventModel, required this.imageTag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Hero(tag: imageTag, child: Image.asset(eventModel.imageLocation))
          ],
        ),
      ),
    );
  }
}
