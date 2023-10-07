// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../widgets/itemwidget.dart';

import '../database/itemsdb.dart';

class NumbersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers"),
        backgroundColor: Colors.brown[700],
      ),

      // body: ListView.builder(
      //     itemCount: numbers.length,
      //     itemBuilder: (context, index) {
      //       return NumberWidget(obj: numbers[index]);
      //     }),
      //OR------------------------------
      body: ListView(
        children: [
          ...numbers.map((e) {
            return ItemWidget(obj: e, color: Colors.amber.shade800);
          }),
        ],
      ),
    );
  }
}
