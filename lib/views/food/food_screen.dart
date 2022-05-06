import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hunger_station_clone/constants.dart';
import 'package:hunger_station_clone/services/restaurant_services.dart';
import 'package:hunger_station_clone/views/food/states/restaurants_ref.dart';
import 'package:hunger_station_clone/views/food/widgets/food_header.dart';
import 'package:hunger_station_clone/views/food/widgets/restaurant_card.dart';
import 'package:hunger_station_clone/widgets/hung_text_field.dart';

class FoodScreen extends ConsumerWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var resRef = ref.watch(restaurantsProvider);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              centerTitle: true,
              title: Column(
                children: [
                  Text(
                    "Food",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SliverPersistentHeader(
              delegate: FoodHeader(),
            ),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Spacing().spacingY3,
                  Column(
                    children: resRef.when(
                      data: (data) {
                        return data
                            .map(
                              (e) => RestaurantCard(
                                restaurant: e,
                              ),
                            )
                            .toList();
                      },
                      error: (e, _) {
                        print(e);
                        return [SizedBox()];
                      },
                      loading: () => [SizedBox()],
                    ),
                  ),
                  Spacing().spacingY3,
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
