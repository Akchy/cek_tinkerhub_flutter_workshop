import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'),),
      body: Column(
        children: [
          rectBox(context, Colors.blueAccent, Icons.home_filled, 'Home page'),
          rectBox(context, Colors.purpleAccent, Icons.ac_unit_outlined, 'Achievements'),
          rectBox(context, Colors.redAccent, Icons.handshake_rounded, 'Experience')
        ],
      ),
    );
  }

  Widget rectBox(BuildContext context, Color colorVal, IconData iconVal, String textVal){
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(16),
      color: colorVal,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Icon(iconVal, color: Colors.white,),
          const SizedBox(width: 10,),
          Text(textVal, style: const TextStyle(fontSize: 16, color: Colors.white),)
        ],
      ),
    );
  }
}

/*
Widgets

[box] -> [box] -> [box] -> [box]

Container -> Widget
Text -> Widget
Row -> Widget

Task 1: How to reduce the height of the column in a container in flutter?
Keywords: Shrink, height, column, reduce

Task 2: How to use loop for reusable widget functions
*/