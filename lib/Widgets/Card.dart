import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CardWid extends StatelessWidget {
  const CardWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Card Widget".text.bold.xl2.make(),
        centerTitle: true,
      ),
      body: ListView.builder(
       itemCount: 20,
       itemBuilder: (context,index){
         return CardWidget();
       },
      )
      );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      margin: EdgeInsets.only(left: 20,right: 20,top: 10),
      child: ListTile(
        leading: Icon(Icons.account_circle_sharp),
        title: "Card Widget".text.make(),
        trailing: Icon(Icons.add),
      ),
    );
  }
}