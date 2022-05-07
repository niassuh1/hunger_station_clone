import 'package:flutter/material.dart';
import 'package:hunger_station_clone/constants.dart';
import 'package:hunger_station_clone/models/category.dart';

class CategoryTag extends StatelessWidget {
  final Category category;
  final bool? selected;
  final Function()? onTap;
  const CategoryTag(
      {Key? key, required this.category, this.selected = false, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: AppPaddings().paddingX2,
      decoration: BoxDecoration(
          border: selected!
              ? Border.all(color: Colors.transparent)
              : Border.all(color: Colors.black12),
          borderRadius: BorderRadius.all(Rounded.circular3),
          color: selected! ? AppColors().secondaryColor : Colors.transparent),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: AppPaddings().padding3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                category.icon,
                const Spacing().spacingX2,
                Text(
                  category.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
