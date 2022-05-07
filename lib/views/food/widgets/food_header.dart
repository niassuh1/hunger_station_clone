import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            top: 56,
            child: SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: AppPaddings().paddingX4,
                children: [
                  FoodCard(
                    margin: AppPaddings().paddingX2,
                    width: 100,
                    color: Colors.blue,
                    child: Padding(
                      padding: AppPaddings().padding6,
                      child: Center(
                          child:
                              SvgPicture.asset("assets/images/poster-01.svg")),
                    ),
                  ),
                  FoodCard(
                    margin: AppPaddings().paddingX2,
                    width: 100,
                    color: AppColors().secondaryColor,
                    child: Padding(
                      padding: AppPaddings().padding4.copyWith(left: 18),
                      child: Center(
                          child:
                              SvgPicture.asset("assets/images/poster-02.svg")),
                    ),
                  ),
                  FoodCard(
                    margin: AppPaddings().paddingX2,
                    width: 100,
                    color: Colors.red,
                    child: Padding(
                      padding: AppPaddings().padding1.copyWith(
                            bottom: 0,
                          ),
                      child: Center(
                          child: SvgPicture.asset(
                              "assets/images/poster-03-01.svg")),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 156;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
