import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.qr_code_outlined),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
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
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 60, left: 16, right: 16, bottom: 50),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Search'),
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Upcoming events',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  )),
              SizedBox(
                height: 250,
                width: double.infinity,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Text('asd');
                  },
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
