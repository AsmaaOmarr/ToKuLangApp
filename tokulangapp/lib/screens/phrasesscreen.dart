import 'package:flutter/material.dart';
import 'package:toku/widgets/itemwidget.dart';
import '../database/itemsdb.dart';

class PhrasesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phrases"),
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
          ...phrases.map((e) {
            return PhrasesWidget(obj: e, color: Colors.blue.shade400);
          }),
        ],
      ),
    );
  }
}
