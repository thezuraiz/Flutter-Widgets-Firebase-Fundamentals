import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class List_view extends StatelessWidget {
  const List_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Simple List View".text.bold.xl2.make(),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          // scrollDirection: Axis.vertical, By Default
          // scrollDirection: Axis.horizontal,
          reverse: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("One",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Two",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Third",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Four",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Five",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Six",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Seven",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              )
              ,Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Eight",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Nine",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Ten",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              ),

            ],
        ),
      ),
    );
  }
}
