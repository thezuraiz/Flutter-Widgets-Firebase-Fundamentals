import 'package:flutter/material.dart';

class Listviewseperator extends StatelessWidget {
  const Listviewseperator({super.key});

  @override
  Widget build(BuildContext context) {

    var arrNames = ["Zuraiz","Abdul-Rehman","Aamir","Bilal","Zuraiz","Abdul-Rehman","Aamir","Bilal","Zuraiz","Abdul-Rehman","Aamir","Bilal"];

    return Scaffold(
      appBar: AppBar(
        title: Text("List View Seperator"),
      ),
      body: ListView.separated(
          itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(),
              title : Text("${arrNames[index]}"),
            );
          },
          separatorBuilder: (context,index) => Divider(),
          itemCount: arrNames.length),
    );
  }
}
