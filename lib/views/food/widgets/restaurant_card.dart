import 'package:flutter/material.dart';
import 'package:hunger_station_clone/constants.dart';
import 'package:hunger_station_clone/models/restaurant.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant? restaurant;
  const RestaurantCard({this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppPaddings().paddingY3,
      clipBehavior: Clip.antiAlias,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Rounded().rounded3),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image(
                width: MediaQuery.of(context).size.width,
                height: 150,
                fit: BoxFit.cover,
                image: NetworkImage(restaurant!.cover),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Image(
                  width: 50,
                  height: 50,
                  image: NetworkImage(restaurant!.logo),
                ),
              ),
            ],
          ),
          Padding(
            padding: AppPaddings().padding4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restaurant!.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacing().spacingY2,
                Text(
                  restaurant!.categories.join(', '),
                  style: TextStyle(fontSize: 13),
                ),
                Spacing().spacingY2,
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        size: 16,
                        color: Colors.black,
                      ),
                      Spacing().spacingX2,
                      Text(
                        '${restaurant!.duration.toString()} Minutes',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      VerticalDivider(),
                      restaurant!.liveTracking
                          ? Icon(
                              Icons.track_changes_rounded,
                              size: 16,
                              color: Colors.greenAccent[700],
                            )
                          : SizedBox(),
                      Spacing().spacingX2,
                      restaurant!.liveTracking
                          ? Text(
                              'Live Tracking',
                              style: TextStyle(
                                color: Colors.greenAccent[700],
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : SizedBox()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
