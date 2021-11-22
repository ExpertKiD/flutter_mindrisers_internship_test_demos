import 'package:eventsapp/resources/colors.dart';
import 'package:eventsapp/view_models/event.dart';
import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  final EventModel eventModel;
  final void Function()? onTap;
  final String imageTag;

  const EventTile(
      {Key? key, required this.eventModel, this.onTap, required this.imageTag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            eventModel.getEventFullDateWithMonthAbbr(),
            style: const TextStyle(fontSize: 12, color: AppColors.golden),
          ),
          Text(
            eventModel.name,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColors.black),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.location_on,
                size: 10,
              ),
              Text(
                eventModel.getEventFullDateWithMonthAbbr(),
                style: const TextStyle(fontSize: 10, color: AppColors.grey),
              ),
            ],
          ),
        ],
      ),
      //isThreeLine: true,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Hero(
          tag: imageTag,
          child: Image.asset(
            eventModel.imageLocation,
            cacheWidth: 100,
            cacheHeight: 100,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
