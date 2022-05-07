import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hunger_station_clone/constants.dart';
import 'package:hunger_station_clone/models/category.dart';
import 'package:hunger_station_clone/views/food/states/category_ref.dart';
import 'package:hunger_station_clone/views/food/widgets/category_tag.dart';

class CategoryHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Consumer(
      builder: (context, ref, child) => Container(
        padding: AppPaddings().paddingY4,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: ListView.builder(
          padding: AppPaddings().paddingX2,
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => CategoryTag(
            category: categories[index],
            selected: ref.watch(categoryIndexRef) == index,
            onTap: () {
              ref.read(categoryIndexRef.state).state = index;
            },
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 68;

  @override
  double get minExtent => 68;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
