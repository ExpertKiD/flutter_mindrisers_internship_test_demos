import 'package:eventsapp/resources/colors.dart';
import 'package:eventsapp/view_models/event.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final EventModel eventModel;
  final void Function()? onTap;
  final String imageTag;

  const EventCard({
    Key? key,
    required this.eventModel,
    this.onTap,
    required this.imageTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 313,
      height: 250,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Hero(
                tag: imageTag,
                child: Image.asset(
                  eventModel.imageLocation,
                  cacheWidth: 313,
                  cacheHeight: 169,
                  fit: BoxFit.cover,
                ),
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
                      color: AppColors.softHighlightColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          eventModel.getEventMonthAbbr(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.golden,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          eventModel.getEventDay(),
                          style: const TextStyle(
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
                    Text(
                      eventModel.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: AppColors.primaryColor,
                        ),
                        Text(
                          eventModel.location,
                          style: const TextStyle(
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
      ),
    );
  }
}
