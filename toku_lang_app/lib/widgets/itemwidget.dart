// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import '../models/Item.dart';

class ItemWidget extends StatelessWidget {
  ItemModel obj;
  Color color;
  ItemWidget({
    Key? key,
    required this.obj,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: Color.fromARGB(255, 227, 214, 190),
            child: Image.asset(
              obj.img!,
            ),
          ),
          Expanded(child: itemInfo(obj: obj)),
        ],
      ),
    );
  }
}

class itemInfo extends StatelessWidget {
  final ItemModel obj;

  const itemInfo({
    Key? key,
    required this.obj,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 5,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(
                minWidth: 100,
                maxWidth: 250,
              ),
              child: Text(
                obj.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              obj.nameEn,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            )
          ],
        ),
        Spacer(
          flex: 12,
        ),
        // to make icon clickable i can use GestureDetector
        //or simply i can use IconButton

        IconButton(
          onPressed: () {
            obj.playsound();
          },
          icon: Icon(
            Icons.play_arrow_rounded,
            color: Colors.white,
            size: 24,
          ),
          splashColor: Color.fromARGB(26, 36, 34, 34),
        ),
        Spacer(
          flex: 1,
        ),
      ],
    );
  }
}

class PhrasesWidget extends StatelessWidget {
  ItemModel obj;
  Color color;

  PhrasesWidget({
    Key? key,
    required this.obj,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      color: color,
      child: itemInfo(obj: obj),
    );
  }
}
