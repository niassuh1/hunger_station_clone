import 'package:flutter/material.dart';
import 'package:hunger_station_clone/constants.dart';

class TextIcon extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Color? color;
  const TextIcon(
      {required this.text, required this.iconData, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, size: 16, color: color!),
        const Spacing().spacingX2,
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: color!,
          ),
        )
      ],
    );
  }
}
