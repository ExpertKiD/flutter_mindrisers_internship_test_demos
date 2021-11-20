import 'package:eventsapp/models/event.dart';

class EventModel extends Event {
  EventModel({
    required imageLocation,
  }) : super(
          imageLocation: imageLocation,
        );

  factory EventModel.from(Event event) {
    return EventModel(
      imageLocation: event.imageLocation,
    );
  }
}
