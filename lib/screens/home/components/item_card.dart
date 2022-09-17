// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_store_app/constants.dart';
import 'package:food_store_app/models/Item.dart';
import 'package:food_store_app/screens/details/details.dart';

class MyItemCard extends StatefulWidget {
  final Item item;
  final int index;
  const MyItemCard({
    Key? key,
    required this.item,
    required this.index,
  }) : super(key: key);

  @override
  State<MyItemCard> createState() => _MyItemCardState();
}

class _MyItemCardState extends State<MyItemCard> {
  Color _iconColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return
        //  GestureDetector(
        // onTap: () {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) {
        //         return DetailsScreen(
        //           item: ,
        //         );
        //       },
        //     ),
        //   );
        // },
        // child:
        Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(
          widget.item.color,
        ),
      ),
      margin: EdgeInsets.only(
        top: widget.index.isOdd ? 15 : 0,
      ),
      child: Column(
        children: [
          Hero(
            tag: widget.item.id,
            child: Image.asset(
              widget.item.image,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 0.4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.item.name,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color:
                              widget.index == 2 ? Colors.white : Colors.black,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "\$ ${widget.item.price}",
                        style: TextStyle(
                          color: kRedColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
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
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
