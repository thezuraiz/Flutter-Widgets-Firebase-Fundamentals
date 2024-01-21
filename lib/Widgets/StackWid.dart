import 'package:flutter/material.dart';

class StackWid extends StatelessWidget {
  const StackWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Widget"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
              width: 400,
              height: 400,
              color: Colors.grey,
          ),
          Positioned(
            bottom: 0,
              right: 0,
              child: Container(
                width: 300,
                height: 300,
                color: Colors.greenAccent,
              )
          ),
          Positioned(
            bottom: 0,
              right: 0,
              child: Container(
                height: 220,
                color: Colors.deepOrange,
              )
          ),Positioned(
            bottom: 0,
              right: 0,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.deepPurple,
              )
          ),
        ],
      ),
    );
  }
}
