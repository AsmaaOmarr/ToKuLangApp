// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Color categoryColor;
  String categoryName;

  Function()? onTap;

  Category({
    Key? key,
    required this.categoryColor,
    required this.categoryName,
    required this.onTap,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 60,
        child: Text(
          "$categoryName",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        color: categoryColor,
      ),
    );
  }
}
