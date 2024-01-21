import 'package:flutter/material.dart';

class Boxdecoration extends StatelessWidget {
  const Boxdecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Box Decoration"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            width: 250,
            height: 250,
            // color: Colors.grey, If we use Box decoration then we should always use color in Box Decoration
            decoration: BoxDecoration(
              color: Colors.black,
              // borderRadius: BorderRadius.circular(20)
              // borderRadius: BorderRadius.all(Radius.circular(20))
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),

              // Shape
              // Is pr direct ap shape choose kr sakty hu without values
              // shape: BoxShape.circle,

              // Border
              border: Border.all(
                width: 10,
                color: Colors.amber,
              ),

              // Box Shadow
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 15,
                  blurRadius: 10
                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}

