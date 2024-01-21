import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleAvatarWid extends StatelessWidget {
  const CircleAvatarWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circular Avatar Widget"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index){
          return ListTile(
            leading: Container(
              height: 100,// to resize it from assister
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/User.png"),
                backgroundColor: Colors.yellowAccent,
                // minRadius: 20,
                // maxRadius: 40,
                //radius: 30, // to Resize Image
              ),
            ),
            title: Text("Name"),
            subtitle: Text("Sub Title"),
            trailing: Icon(CupertinoIcons.add_circled_solid),
          );
        },
      )
    );
  }
}