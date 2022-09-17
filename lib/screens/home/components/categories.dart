// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_store_app/constants.dart';
import 'package:food_store_app/models/Category.dart';

class MyCategories extends StatefulWidget {
  const MyCategories({Key? key}) : super(key: key);

  @override
  State<MyCategories> createState() => _MyCategoriesState();
}

class _MyCategoriesState extends State<MyCategories> {
  int _selectedTag = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: kDefaultPadding),
        child: SizedBox(
          height: 35,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedTag = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: _selectedTag == index ? Colors.grey : Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 0.8,
                  ),
                  margin: EdgeInsets.only(
                    right: kDefaultPadding * 0.5,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        demoCategories[index].icon,
                        height: _selectedTag == index ? 20 : 16,
                        color: _selectedTag == index
                            ? Colors.white
                            : kPrimaryColor,
                      ),
                      SizedBox(width: 5),
                      Text(
                        demoCategories[index].name,
                        style: TextStyle(
                          fontSize: _selectedTag == index ? 20 : 16,
                          color: _selectedTag == index
                              ? Colors.white
                              : kPrimaryColor,
                          fontWeight:
                              _selectedTag == index ? FontWeight.bold : null,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: demoCategories.length,
          ),
        ),
      ),
    );
  }
}
