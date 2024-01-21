import 'package:flutter/material.dart';

class PositionWid extends StatelessWidget {
  const PositionWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Position Widget",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepPurple,
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.white,
              ),
            ),
            Positioned(
              bottom: 50,
              left: 50,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.yellowAccent,
              ),
            ),
            Positioned(
              top: 280,
              right: 50,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.orange,
              ),
            )
          ],
        ),
      ),
    );
  }
}
