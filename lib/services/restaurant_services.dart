import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hunger_station_clone/models/restaurant.dart';

class RestaurantServices {
  final CollectionReference restaurantCollection =
      FirebaseFirestore.instance.collection('restaurant');

  List<Restaurant> _restaurantsListFromSnapshot(
      QuerySnapshot<dynamic> snapshot) {
    return snapshot.docs.map((e) {
      return Restaurant(
        name: e.data()['name']! ?? "",
        categories: e.data()['categories']! ?? [],
        cover: e.data()['cover']! ?? "",
        duration: e.data()['duration']! ?? 0,
        liveTracking: e.data()['liveTracking']! ?? false,
        logo: e.data()['logo']! ?? "",
      );
    }).toList();
  }

  Stream<List<Restaurant>> get restaurants {
    return restaurantCollection.snapshots().map(_restaurantsListFromSnapshot);
  }

  RestaurantServices();
}
