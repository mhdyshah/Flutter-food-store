import 'package:flutter/material.dart';
import 'package:food_store_app/models/Item.dart';
import 'package:food_store_app/screens/details/details.dart';
import 'package:food_store_app/screens/home/components/item_card.dart';

class MyCard extends StatelessWidget {
  final Item item;
  final int index;
  const MyCard({
    super.key,
    required this.item,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailsScreen(
                item: item,
              );
            },
          ),
        );
      },
      child: MyItemCard(item: item, index: index),
    );
  }
}
