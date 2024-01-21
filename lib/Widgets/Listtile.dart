import 'package:flutter/material.dart';

class Listtile extends StatelessWidget {
  const Listtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Tile Widget"),
        centerTitle: true,
      ),
    body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context,index){
          return ListTile(
            leading: Icon(Icons.account_circle_sharp),
            title: Text("Title"),
            subtitle: Text("SubTitle"),
            trailing: Icon(Icons.add),
          );
        },
      )
    );
  }
}
