import 'package:flutter/material.dart';

class WrapWid extends StatelessWidget {
  const WrapWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),),
        centerTitle: true,
      ),
      body: Wrap(
        direction: Axis.horizontal,
        // direction: Axis.vertical,
        alignment: WrapAlignment.center,
        spacing: 10, // for row if its on Column and vise verse
        runSpacing: 10, //for column of its for Column and vise verse
        children: [
          Container(
            width: 70,
            height: 70,
            color: Colors.deepPurple
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.grey
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.red
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.green
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.teal
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.tealAccent
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.teal
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.tealAccent
          )
        ],
      ),
    );
  }
}
