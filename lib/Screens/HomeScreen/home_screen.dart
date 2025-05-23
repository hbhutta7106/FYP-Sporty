import 'package:flutter/material.dart';
import 'package:fyp/Screens/HomeScreen/home_header.dart';
import 'package:fyp/Screens/HomeScreen/ads_slider.dart';
import 'package:fyp/Screens/HomeScreen/categories.dart';
import 'package:fyp/Screens/HomeScreen/products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                SizedBox(height: 15),
                HomeHeader(),
                SizedBox(height: 20),
                AdsSlider(),
                SizedBox(height: 20),
                Category(),
                SizedBox(height: 20),
                Product(),



              ],
            ),
      )),
    );
  }
}
