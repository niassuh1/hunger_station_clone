import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hunger_station_clone/constants.dart';
import 'package:hunger_station_clone/firebase_options.dart';
import 'package:hunger_station_clone/util/run_app.dart';
import 'package:hunger_station_clone/views/page_wrapper.dart';

void main() async {
  kabApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: const AppColors().primaryColor,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedIconTheme: IconThemeData(
            color: const AppColors().secondaryColor,
          ),
          unselectedIconTheme: IconThemeData(
            color: const AppColors().black.withOpacity(.2),
          ),
          selectedLabelStyle: TextStyle(
            color: const AppColors().primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: const AppColors().black,
            fontSize: 12,
          ),
        ),
        primaryColor: const AppColors().primaryColor,
        colorScheme: ColorScheme.light(
          secondary: const AppColors().secondaryColor,
          primary: const AppColors().primaryColor,
        ),
        iconTheme: IconThemeData(
          color: const AppColors().primaryColor,
        ),
      ),
      home: const PageWrapper(),
    );
  }
}
