import 'package:eventsapp/models/event.dart';
import 'package:intl/intl.dart';

class EventModel extends Event {
  EventModel({
    required imageLocation,
    required name,
    required location,
    required startDateTime,
    required endDateTime,
    required organizerName,
    required priceInDollars,
  }) : super(
          imageLocation: imageLocation,
          name: name,
          location: location,
          startDateTime: startDateTime,
          endDateTime: endDateTime,
          organizerName: organizerName,
          priceInDollars: priceInDollars,
        );

  factory EventModel.from(Event event) {
    return EventModel(
      imageLocation: event.imageLocation,
      name: event.name,
      location: event.location,
      startDateTime: event.startDateTime,
      endDateTime: event.endDateTime,
      organizerName: event.organizerName,
      priceInDollars: event.priceInDollars,
    );
  }

  String getEventMonthAbbr() => DateFormat(DateFormat.ABBR_MONTH).format(
        startDateTime,
      );

  String getEventDay() => DateFormat(DateFormat.DAY).format(
        startDateTime,
      );
}
