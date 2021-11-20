import 'package:eventsapp/view_models/event.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final EventModel eventModel;

  const EventCard({Key? key, required this.eventModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Image.asset(eventModel.imageLocation)],
      ),
    );
  }
}
