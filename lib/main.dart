import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
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
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF582a16),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedIconTheme: IconThemeData(
            color: Color(0xCCFFD709),
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.black45,
          ),
          selectedLabelStyle: TextStyle(
            color: Color(0xFF582a16),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 12,
          ),
        ),
        primaryColor: const Color(0xFF582a16),
        colorScheme: const ColorScheme.light(
          secondary: Color(0xCCFFD709),
          primary: Color(0xFF582a16),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xFF582a16),
        ),
      ),
      home: const PageWrapper(),
    );
  }
}
