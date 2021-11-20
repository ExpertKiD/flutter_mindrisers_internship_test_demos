import 'package:eventsapp/resources/colors.dart';
import 'package:eventsapp/view_models/event.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final EventModel eventModel;

  const EventCard({Key? key, required this.eventModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 313,
      height: 250,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              eventModel.imageLocation,
              cacheWidth: 313,
              cacheHeight: 169,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              SizedBox(
                width: 46,
                height: 46,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFFF1E8FB),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Jul',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.golden,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '13',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'The Pretty Reckless',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: AppColors.primaryColor,
                      ),
                      Text(
                        'Fairview Gospel Church',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
