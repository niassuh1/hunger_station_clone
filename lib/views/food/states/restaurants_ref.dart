import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hunger_station_clone/services/restaurant_services.dart';

final restaurantsProvider =
    StreamProvider((ref) => RestaurantServices().restaurants);
