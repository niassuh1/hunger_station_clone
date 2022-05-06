import 'package:flutter/material.dart';
import 'package:hunger_station_clone/constants.dart';

class ImageConfig {
  final double? height;
  final double? width;
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  final String assetName;

  ImageConfig({
    required this.assetName,
    this.height,
    this.width,
    this.top,
    this.left,
    this.right,
    this.bottom,
  });
}

class CardBanner extends StatelessWidget {
  final String title;
  final String description;
  final Color? color;
  final ImageConfig? imageConfig;
  final Color? textColors;
  final Function()? onTap;
  CardBanner({
    required this.title,
    required this.description,
    this.imageConfig,
    this.color = const Color(0xCCFFD709),
    this.textColors = Colors.black,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(const Rounded().rounded2),
      ),
      child: Stack(
        children: [
          imageConfig != null
              ? Positioned(
                  top: imageConfig?.top,
                  right: imageConfig?.right,
                  left: imageConfig?.left,
                  bottom: imageConfig?.bottom,
                  child: Image(
                    image: AssetImage(
                      imageConfig!.assetName,
                    ),
                    width: imageConfig?.width,
                    height: imageConfig?.height,
                  ),
                )
              : SizedBox(),
          Padding(
            padding: AppPaddings().padding3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: textColors,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: 13, color: textColors),
                ),
              ],
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.black12,
              highlightColor: Colors.black12,
              onTap: onTap,
            ),
          )
        ],
      ),
    );
  }
}
