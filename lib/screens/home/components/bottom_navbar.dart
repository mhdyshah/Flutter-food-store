// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_store_app/constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavItem(tap: () {}, icon: "assets/icons/home.svg"),
          NavItem(tap: () {}, icon: "assets/icons/chat.svg"),
          NavItem(tap: () {}, icon: "assets/icons/buy.svg"),
          NavItem(tap: () {}, icon: "assets/icons/profile.svg"),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String icon;
  final GestureTapCallback tap;
  const NavItem({
    Key? key,
    required this.icon,
    required this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: SvgPicture.asset(icon),
    );
  }
}
