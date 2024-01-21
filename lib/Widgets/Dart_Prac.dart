import 'package:flutter/material.dart';

class Dart_Prac extends StatelessWidget {

  var dataSet = [
    {
      "Name": "Zuraiz Khan",
      "PhoneNo": "03001234029",
    },
    {
      "Name": 'Abdul Rehman',
      "PhoneNo": "123213123",
    },
    {
      "Name": 'Ammir Bilal',
      "PhoneNo": "213213123",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart Prac"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.tealAccent,
        child: ListView.builder(
          itemCount: dataSet.length,
          itemBuilder: (context,index){
            var data = dataSet[index];
            return ListTile(
              leading: Icon(Icons.account_circle_sharp,size: 22,),
              title: Text(data['Name'].toString()),
              subtitle: Text(data['PhoneNo'].toString()),
              trailing: CircleAvatar(
                child: Text("${index+1}"),
              ),
            );
          },
        ),
      ),
    );
  }
}
