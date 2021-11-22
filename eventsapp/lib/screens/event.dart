import 'package:eventsapp/resources/colors.dart';
import 'package:eventsapp/view_models/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EventScreen extends StatelessWidget {
  final EventModel eventModel;
  final String imageTag;

  const EventScreen(
      {Key? key, required this.eventModel, required this.imageTag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
          height: 80,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            color: AppColors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Price',
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '\$${eventModel.priceInDollars}',
                          style: const TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const Text(
                          '/per person',
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                    foregroundColor: MaterialStateProperty.all(AppColors.white),
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primaryColor),
                  ),
                  child: const Text('Get a Ticket'),
                )
              ],
            ),
          )),
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: false,
              snap: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_outlined),
                )
              ],
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  eventModel.name,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: imageTag,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                      child: Image.asset(
                        eventModel.imageLocation,
                        cacheWidth: MediaQuery.of(context).size.width.round(),
                        cacheHeight: 320,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 24),
                    child: Text(
                      eventModel.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: SizedBox(
                      height: 52,
                      width: 52,
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
                    trailing: SizedBox(
                      width: 160,
                      height: 52,
                      child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.softHighlightColor,
                            borderRadius: BorderRadius.circular(26),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'Add to Calendar',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.primaryColor),
                                ),
                                Hero(
                                  tag: 'btn_fab',
                                  child: SizedBox(
                                    width: 44,
                                    height: 44,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: const Icon(Icons.add),
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all(
                                              EdgeInsets.zero),
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  AppColors.white),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  AppColors.primaryColor),
                                          shape: MaterialStateProperty.all(
                                              const CircleBorder())),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Tuesday',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '10:00 - 12:00 PM',
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, top: 28, bottom: 18),
                    child: Text(
                      'About',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 0,
                    ),
                    child: Text(
                      'The pretty reckless is an American rock band from New york city, Formed in 2009. The',
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                    child: TextButton(
                      style: ButtonStyle(
                        alignment: Alignment.center,
                        // minimumSize: MaterialStateProperty.all(Size(50, 12)),
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Read more...',
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    leading: SizedBox(
                      width: 42,
                      height: 42,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                            child: Text(
                          'W',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 12),
                        )),
                      ),
                    ),
                    trailing: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14))),
                        foregroundColor:
                            MaterialStateProperty.all(AppColors.primaryColor),
                        backgroundColor: MaterialStateProperty.all(
                            AppColors.softHighlightColor),
                      ),
                      onPressed: () {},
                      child: const Text('Follow'),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          eventModel.organizerName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const Text(
                          'Organizer',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 26, left: 16, right: 16, bottom: 16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                          'https://www.howtogeek.com/wp-content/uploads/2019/06/img_5d0cef8cb09f1.png?height=200p&trim=2,2,2,2'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
