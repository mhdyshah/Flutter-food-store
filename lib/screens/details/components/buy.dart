// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_store_app/constants.dart';
import 'package:food_store_app/screens/details/components/buy_button.dart';
import 'package:food_store_app/screens/details/details.dart';

class Buy extends StatelessWidget {
  const Buy({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Text(
                "Price",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "\$ ",
                      style: TextStyle(
                        color: kRedColor,
                        fontSize: 22,
                      ),
                    ),
                    TextSpan(
                      text: widget.item.price.toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Expanded(
          flex: 4,
          child: BuyButton(),
        ),
      ],
    );
  }
}
