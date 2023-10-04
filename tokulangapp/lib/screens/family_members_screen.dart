import 'package:flutter/material.dart';
import 'package:toku/widgets/itemwidget.dart';

import '../database/itemsdb.dart';

class FamilyMembersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Member"),
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
          ...familyMembers.map((e) {
            return ItemWidget(obj: e, color: Colors.green.shade600);
          }),
        ],
      ),
    );
  }
}
