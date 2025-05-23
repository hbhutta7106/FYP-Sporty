// ignore_for_file: prefer_const_constructors, unnecessary_string_escapes, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, must_be_immutable

import 'package:flutter/material.dart';
import 'package:fyp/Screens/SellerHomeScreen/new_order_screen.dart';
import 'package:fyp/Screens/UserProfile/components/profile_menu.dart';

import 'package:fyp/Screens/MyAdsScreen/myads.dart';
import 'package:fyp/Screens/SignInScreen/sigin.dart';
import 'package:fyp/Screens/UserProfile/edit_profile.dart';
import 'package:fyp/Screens/WalletScreen/mywallet.dart';

import '../../FavouriteProductScreen/favourite_product_screen.dart';

class Body extends StatelessWidget {
  final String? profilePic;

  const Body({super.key, required this.profilePic});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10),
          ProfileMenu(
            icon: "assets/icons/User Icon.svg",
            text: "Edit Profile",
            press: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return SellerEditProfileScreen();
              }));
            },
          ),
          ProfileMenu(
            icon: "assets/icons/Cart Icon.svg",
            text: "My Orders",
            press: () {
              Navigator.pushNamed(context, NewOrderScreen.routeName);
            },
          ),
          ProfileMenu(
            icon: "assets/icons/Heart Icon.svg",
            text: "My Post",
            press: () {
              Navigator.pushNamed(context, MyAdsScreen.routeName);
            },
          ),
          ProfileMenu(
            icon: "assets/icons/Heart Icon.svg",
            text: "Favourites",
            press: () {
              //Navigator.pushNamed(context, MyAdsScreen.routeName);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FavoriteProductsScreen()),
              );
            },
          ),
          ProfileMenu(
            icon: "assets/icons/Bill Icon.svg",
            text: "My Wallet",
            press: () {
              Navigator.pushNamed(context, WalletScreen.routeName);
            },
          ),
          ProfileMenu(
            icon: "assets/icons/Log out.svg",
            text: "Log-Out",
            press: () {
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
