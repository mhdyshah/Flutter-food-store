// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_store_app/constants.dart';
import 'package:food_store_app/models/Item.dart';
import 'package:food_store_app/screens/home/components/appbar.dart';
import 'package:food_store_app/screens/home/components/bottom_navbar.dart';
import 'package:food_store_app/screens/home/components/card.dart';
import 'package:food_store_app/screens/home/components/categories.dart';
import 'package:food_store_app/screens/home/components/filterIcon.dart';
import 'package:food_store_app/screens/home/components/search_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        context,
        title: "FoodLand",
        size: 30.0,
        family: "DynaPuff",
        leading: Transform.translate(
          offset: Offset(kDefaultPadding * 0.5, 0),
          child: IconButton(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset("assets/images/usr.png"),
            ),
            onPressed: () {},
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/notification.svg"),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(kDefaultPadding),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find the Best \nHealth for You",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              MySearchBar(),
              Row(
                children: [
                  MyFilter(),
                  MyCategories(),
                ],
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                "Popular",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: kDefaultPadding),
              MasonryGridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                itemCount: demoItems.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return MyCard(
                    item: demoItems[index],
                    index: index,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
