import 'package:flutter/material.dart';

class ChipWid extends StatefulWidget {
  const ChipWid({super.key});

  @override
  State<ChipWid> createState() => _ChipWidState();
}

class _ChipWidState extends State<ChipWid> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 7,
        itemBuilder: (context,index){
          return Chip(
            label: Text("Chip ${index}"),
            onDeleted: (){
              print("$index chip deleted");
            },
          );
        }
    );
  }
}
