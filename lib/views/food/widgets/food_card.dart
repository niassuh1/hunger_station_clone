import 'package:flutter/material.dart';
import 'package:hunger_station_clone/constants.dart';

class FoodCard extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? child;
  final Color? color;
  final EdgeInsetsGeometry? margin;
  const FoodCard(
      {Key? key,
      this.width = 100,
      this.height = 100,
      this.child,
      this.color,
      this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Rounded.circular2),
        color: color ?? Colors.white,
      ),
      child: child,
    );
  }
}
