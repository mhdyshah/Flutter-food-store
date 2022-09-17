// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_store_app/constants.dart';
import 'package:food_store_app/screens/details/details.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.item.ingrediants.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kDefaultPadding),
              color: Colors.white,
            ),
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: kDefaultPadding * 0.6),
            width: 50,
            child: SvgPicture.asset(
              widget.item.ingrediants[index],
            ),
          );
        },
      ),
    );
  }
}
