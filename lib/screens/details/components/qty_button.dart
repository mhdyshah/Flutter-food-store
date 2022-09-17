// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_store_app/constants.dart';

class MyQtyButton extends StatefulWidget {
  final String text;
  final GestureTapCallback tap;
  const MyQtyButton({
    super.key,
    required this.text,
    required this.tap,
  });

  @override
  State<MyQtyButton> createState() => _MyQtyButtonState();
}

class _MyQtyButtonState extends State<MyQtyButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: widget.tap,
          child: Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Text(
              widget.text,
              style: TextStyle(
                color: kRedColor,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
