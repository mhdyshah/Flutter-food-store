// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_store_app/constants.dart';
import 'package:food_store_app/models/Item.dart';

class TitleBar extends StatefulWidget {
  const TitleBar({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  State<TitleBar> createState() => _TitleBarState();
}

class _TitleBarState extends State<TitleBar> {
  Color _iconColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.item.name,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/star.svg",
                  width: kDefaultPadding * 0.8,
                ),
                SizedBox(width: 5),
                Text(
                  "${widget.item.rating}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 18),
                Text(
                  "\$ ${widget.item.price}",
                  style: TextStyle(
                    color: Colors.red[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {
            setState(() {
              if (_iconColor == Colors.white) {
                _iconColor = Colors.red;
              } else {
                _iconColor = Colors.white;
              }
            });
          },
          icon: SvgPicture.asset(
            "assets/icons/heart.svg",
            color: _iconColor,
          ),
        ),
      ],
    );
  }
}
