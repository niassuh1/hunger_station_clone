import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hunger_station_clone/constants.dart';
import 'package:hunger_station_clone/views/food/widgets/food_card.dart';
import 'package:hunger_station_clone/widgets/hung_text_field.dart';

class FoodHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Opacity(
      opacity: shrinkOffset / 120 >= 1 ? 0 : 1 - shrinkOffset / 120,
      child: Stack(
        clipBehavior: Clip.antiAlias,
        fit: StackFit.expand,
        children: [
          Padding(
            padding: AppPaddings().paddingX4,
            child: const HungTextField(),
          ),
          Positioned(
            top: 64,
            child: SizedBox(
              height: 130,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: AppPaddings().paddingX3,
                itemCount: 10,
                itemBuilder: (context, index) => FoodCard(
                  margin: AppPaddings().paddingX3,
                  width: 130,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Eid Deals',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 210;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
