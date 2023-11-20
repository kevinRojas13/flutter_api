import 'package:flutter/material.dart';
import 'package:flutter_api/ui/general/colors.dart';

class ItemFilterWidget extends StatelessWidget {
  String text;
  bool isSelected;

  ItemFilterWidget({
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      child: Chip(
        backgroundColor: isSelected ? Colors.white : kBrandSecondaryColors,
        labelStyle: TextStyle(
          color: isSelected ? kBrandPrimaryColors : Colors.white,
        ),
        label: Text(text),
      ),
    );
  }
}
