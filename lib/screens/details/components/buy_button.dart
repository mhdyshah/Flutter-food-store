// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_store_app/constants.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDefaultPadding * 2),
          color: kRedColor,
        ),
        height: 50,
        alignment: Alignment.center,
        child: Text(
          "Buy Now",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
