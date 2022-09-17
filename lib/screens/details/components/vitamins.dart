// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_store_app/constants.dart';
import 'package:food_store_app/screens/details/details.dart';

class Vitamins extends StatelessWidget {
  const Vitamins({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.item.vitamins.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kDefaultPadding),
              color: Colors.white,
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            margin: EdgeInsets.only(right: kDefaultPadding * 0.6),
            child: Text(
              widget.item.vitamins[index],
            ),
          );
        },
      ),
    );
  }
}
