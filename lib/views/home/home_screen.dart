import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hunger_station_clone/views/food/food_screen.dart';
import 'package:hunger_station_clone/views/home/appbar/header.dart';
import 'package:hunger_station_clone/widgets/card_banner.dart';
import 'package:hunger_station_clone/widgets/hung_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(slivers: [
          SliverPersistentHeader(
            delegate: HomeAppbarHeader(),
            floating: true,
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Container(
              constraints:
                  BoxConstraints(minHeight: MediaQuery.of(context).size.height),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HungTextField(),
                    SizedBox(height: 16),
                    Text(
                      'What would you like to order?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: CardBanner(
                            title: 'Food',
                            description:
                                'Order food from more than +20,000 restaurants',
                            imageConfig: ImageConfig(
                              assetName: "assets/images/ARABIC-FALAFEL.png",
                              width: 160,
                              height: 240,
                              top: -20,
                              right: -10,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FoodScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                            child: CardBanner(
                          title: 'Quick Market',
                          description: 'Explore our markets',
                          color: Colors.blueAccent,
                          textColors: Colors.white,
                        ))
                      ],
                    ),
                    SizedBox(height: 16),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: CardBanner(
                        title: 'Your donation Matters',
                        description: 'Donate to various charities',
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    SizedBox(height: 128),
                    Opacity(
                      opacity: .3,
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/images/logo-secondary.svg',
                          width: MediaQuery.of(context).size.width,
                          height: 120,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
