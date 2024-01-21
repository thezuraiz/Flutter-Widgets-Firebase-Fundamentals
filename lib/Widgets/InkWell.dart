import 'package:flutter/material.dart';

class Ink_Well extends StatelessWidget {
  const Ink_Well({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InkWell Practice",style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            print("Single Clicked on Box");
          },
          onDoubleTap: (){
            print("Double Clicked on Box");
          },
          onLongPress: (){
            print("Long Clicked on Box");
          },
          child: Container(
            height: 250,
            width: 250,
            color: Colors.amber,
            child: Center(
              child: InkWell(
                onTap: (){
                  print("Single Clicked on Text");
                },
                onDoubleTap: (){
                  print("Double Clicked on Text");
                },
                onLongPress: (){
                  print("Long Clicked on Text");
                },
                child: Text("Click Me",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
