import 'package:eventsapp/models/event.dart';
import 'package:eventsapp/view_models/event.dart';
import 'package:eventsapp/widgets/event_card.dart';
import 'package:eventsapp/widgets/event_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'event.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO 1: Remove below two sample models from UI
    List<Event> events = <Event>[
      Event(
        imageLocation: 'assets/images/events/event_1.jpeg',
        startDateTime: DateTime.utc(2020, 7, 13, 21, 30),
        endDateTime: DateTime.utc(2020, 7, 14, 0, 30),
        location: 'Fairview Gospel Church',
        name: 'The Pretty Reckless',
        organizerName: 'Westfield Centre',
        priceInDollars: 30,
      ),
      Event(
        imageLocation: 'assets/images/events/event_2.jpg',
        startDateTime: DateTime.utc(2020, 7, 13, 21, 30),
        endDateTime: DateTime.utc(2020, 7, 14, 0, 30),
        location: 'Fairview Gospel Church',
        name: 'The Pretty Reckless',
        organizerName: 'Westfield Centre',
        priceInDollars: 30,
      ),
      Event(
        imageLocation: 'assets/images/events/event_3.jpg',
        startDateTime: DateTime.utc(2020, 7, 13, 21, 30),
        endDateTime: DateTime.utc(2020, 7, 14, 0, 30),
        location: 'Fairview Gospel Church',
        name: 'The Pretty Reckless',
        organizerName: 'Westfield Centre',
        priceInDollars: 30,
      ),
      Event(
        imageLocation: 'assets/images/events/event_4.jpg',
        startDateTime: DateTime.utc(2020, 7, 13, 21, 30),
        endDateTime: DateTime.utc(2020, 7, 14, 0, 30),
        location: 'Fairview Gospel Church',
        name: 'The Pretty Reckless',
        organizerName: 'Westfield Centre',
        priceInDollars: 30,
      ),
      Event(
        imageLocation: 'assets/images/events/event_5.jpg',
        startDateTime: DateTime.utc(2020, 7, 13, 21, 30),
        endDateTime: DateTime.utc(2020, 7, 14, 0, 30),
        location: 'Fairview Gospel Church',
        name: 'The Pretty Reckless',
        organizerName: 'Westfield Centre',
        priceInDollars: 30,
      ),
    ];
    List<EventModel> eventModels =
        events.map((event) => EventModel.from(event)).toList();
    List<EventModel> concertModels =
        events.map((event) => EventModel.from(event)).toList();

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        heroTag: 'btn_fab',
        onPressed: () {},
        child: const Icon(Icons.qr_code_outlined),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on), label: 'Map'),
            BottomNavigationBarItem(
                icon: Icon(Icons.stay_primary_landscape), label: 'Ticket'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 88, left: 16, right: 16, bottom: 26),
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Search'),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 16, bottom: 16),
                  child: const Text(
                    'Upcoming events',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )),
              SizedBox(
                height: 250,
                width: double.infinity,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  itemBuilder: (context, index) {
                    return EventCard(
                        eventModel: eventModels[index],
                        imageTag: 'event_card_$index',
                        onTap: () => Navigator.of(context).push(
                              PageRouteBuilder(
                                transitionDuration:
                                    const Duration(milliseconds: 500),
                                pageBuilder:
                                    (context, animation, secondaryAnimation) {
                                  return EventScreen(
                                    eventModel: eventModels[index],
                                    imageTag: 'event_card_$index',
                                  );
                                },
                              ),
                            ));
                  },
                  itemCount: eventModels.length,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(width: 10, height: double.infinity),
                ),
              ),
              const SizedBox(height: 28),
              Container(
                  padding: const EdgeInsets.only(left: 16, bottom: 32),
                  child: const Text(
                    'Nearby Concerts',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )),
              ListView.separated(
                padding: const EdgeInsets.only(bottom: 16),
                itemBuilder: (context, index) {
                  return EventTile(
                      eventModel: eventModels[index],
                      imageTag: 'event_tile_$index',
                      onTap: () => Navigator.of(context).push(
                            PageRouteBuilder(
                              transitionDuration:
                                  const Duration(milliseconds: 500),
                              pageBuilder:
                                  (context, animation, secondaryAnimation) {
                                return EventScreen(
                                  eventModel: eventModels[index],
                                  imageTag: 'event_tile_$index',
                                );
                              },
                            ),
                          ));
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
                itemCount: eventModels.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
