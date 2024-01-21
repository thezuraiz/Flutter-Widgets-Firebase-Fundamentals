import 'package:flutter/material.dart';

class PaddingAndMargin extends StatelessWidget {
  const PaddingAndMargin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padding & Margin"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center, // To Occupy app remaing space shyd.!
        margin: EdgeInsets.all(20),
        color: Colors.amber,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text("The_Zuraiz",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
        ),
      ),
    );
  }
}
