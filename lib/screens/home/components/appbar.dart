// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

AppBar MyAppBar(
  BuildContext context, {
  required String title,
  required List<Widget> actions,
  required Widget leading,
  required double size,
  required String family,
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title,
      style: TextStyle(
        fontSize: size,
        fontFamily: family,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
    leading: leading,
    actions: actions,
  );
}
