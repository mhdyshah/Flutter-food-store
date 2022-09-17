// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
        hintText: 'Find Your Food',
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.4),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.pink.withOpacity(0.2), width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        prefixIcon: Icon(
          Icons.search_rounded,
          color: Colors.black,
        ),
      ),
    );
  }
}
