// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toku/screens/colorsreen.dart';
import 'package:toku/screens/numbers_screen.dart';
import 'package:toku/screens/phrasesscreen.dart';
import 'package:toku/widgets/category.dart';

import 'family_members_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 233, 207),
      appBar: AppBar(
        title: Text('ToKu'),
        backgroundColor: Colors.brown[700],
      ),
      body: Column(
        children: [
          Category(
            categoryColor: Colors.amber.shade800,
            categoryName: 'Numbers',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersScreen();
              }));
            },
          ),
          Category(
            categoryColor: Colors.green.shade600,
            categoryName: 'Family Members',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembersScreen();
              }));
            },
          ),
          Category(
            categoryColor: Colors.purple.shade700,
            categoryName: 'Colors',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsScreen();
              }));
            },
          ),
          Category(
            categoryColor: Colors.blue.shade400,
            categoryName: 'Phrases',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
