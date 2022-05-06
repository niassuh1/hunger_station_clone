import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppbarHeader extends SliverPersistentHeaderDelegate {
  final double? height;
  final double? logoWidth;
  final double? scrollFactor;
  final double? gap;

  HomeAppbarHeader({
    this.height = 60,
    this.logoWidth = 70,
    this.scrollFactor = 1.55,
    this.gap = 5,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Theme.of(context).appBarTheme.backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: shrinkOffset >= 40 ? 6 : 0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: buildTitle(context, shrinkOffset),
          ),
        ],
      ),
    );
  }

  Widget buildTitle(BuildContext context, double shrinkOffset) {
    double scrollHeight = (logoWidth! - gap!) / scrollFactor! + 5;
    double locationScrollPosition =
        -shrinkOffset * scrollFactor! + logoWidth! + gap!;
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          left: shrinkOffset > 0 ? -shrinkOffset * scrollFactor! : 0,
          child: SvgPicture.asset(
            'assets/images/logo.svg',
            width: logoWidth,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
          top: 9,
          left: shrinkOffset <= scrollHeight ? locationScrollPosition : 0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.location_pin, size: 16),
              SizedBox(width: 5),
              Text('Deliver to'),
              SizedBox(width: 5),
              Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Positioned(
          right: 0,
          top: -8,
          child: IconButton(
            onPressed: () {
              print("Search");
            },
            splashRadius: 16,
            splashColor: Colors.black12,
            icon: Icon(Icons.search),
          ),
        ),
        buildBalance(shrinkOffset, context),
      ],
    );
  }

  Positioned buildBalance(double shrinkOffset, BuildContext context) {
    return Positioned(
      right: 0,
      top: shrinkOffset > 0 ? -shrinkOffset / scrollFactor! : 0,
      child: Opacity(
        opacity: shrinkOffset >= 30 ? 0 : 1 - shrinkOffset / 30,
        child: Container(
          color: Theme.of(context).appBarTheme.backgroundColor,
          child: Opacity(
            opacity: .45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.account_balance_wallet_rounded,
                  size: 32,
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Balance',
                      style: TextStyle(
                          fontSize: 12, color: Theme.of(context).primaryColor),
                    ),
                    Text(
                      '100SR',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => height!;

  @override
  // TODO: implement minExtent
  double get minExtent => height!;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }
}
