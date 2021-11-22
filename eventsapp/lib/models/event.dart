class Event {
  String imageLocation;
  String name;
  String location;
  DateTime startDateTime;
  DateTime endDateTime;
  String organizerName;
  double priceInDollars;

  Event({
    required this.imageLocation,
    required this.name,
    required this.location,
    required this.startDateTime,
    required this.endDateTime,
    required this.organizerName,
    required this.priceInDollars,
  });
}
