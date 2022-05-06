import 'package:flutter/material.dart';
import 'package:hunger_station_clone/views/home/home_screen.dart';

class PageWrapper extends StatelessWidget {
  const PageWrapper({Key? key, List<Widget>? pages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          HomeScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded), label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.discount_rounded), label: 'Offers'),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_rounded), label: 'More'),
        ],
      ),
    );
  }
}
