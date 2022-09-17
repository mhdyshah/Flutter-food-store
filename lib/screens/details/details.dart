// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_store_app/constants.dart';
import 'package:food_store_app/models/Item.dart';
import 'package:food_store_app/screens/details/components/buy.dart';
import 'package:food_store_app/screens/details/components/ingredients.dart';
import 'package:food_store_app/screens/details/components/qty_button.dart';
import 'package:food_store_app/screens/details/components/title_bar.dart';
import 'package:food_store_app/screens/details/components/vitamins.dart';
import 'package:food_store_app/screens/home/components/appbar.dart';

class DetailsScreen extends StatefulWidget {
  final Item item;
  const DetailsScreen({super.key, required this.item});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(
        context,
        title: "D e t a i l s",
        size: 25,
        family: "PlayfairDisplay",
        leading: Transform.translate(
          offset: Offset(kDefaultPadding * 0.5, 0),
          child: IconButton(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SvgPicture.asset("assets/icons/back.svg"),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/dots.svg"),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.2),
            padding: EdgeInsets.only(top: size.height * 0.2),
            height: size.height * 0.8,
            decoration: BoxDecoration(
              color: Color(widget.item.color),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding * 5),
                topRight: Radius.circular(kDefaultPadding * 5),
              ),
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(
                kDefaultPadding,
                0,
                kDefaultPadding,
                kDefaultPadding,
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleBar(item: widget.item),
                    SizedBox(height: kDefaultPadding),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Details",
                          style: TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            MyQtyButton(
                              text: "-",
                              tap: () {
                                setState(() {
                                  if (_counter <= 0) {
                                    Text("0");
                                  } else {
                                    _counter--;
                                  }
                                });
                              },
                            ),
                            Text(
                              "$_counter",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            MyQtyButton(
                              text: "+",
                              tap: () {
                                setState(() {
                                  _counter++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      widget.item.description,
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Vitamins(widget: widget),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      "Ingredients",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Ingredients(widget: widget),
                    SizedBox(height: kDefaultPadding),
                    Buy(widget: widget),
                  ],
                ),
              ),
            ),
          ),
          Hero(
            tag: widget.item.id,
            child: Image.asset(
              widget.item.image,
              height: size.height * 0.4,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
