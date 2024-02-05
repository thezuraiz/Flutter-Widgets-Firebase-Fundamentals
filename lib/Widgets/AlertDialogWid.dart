import 'package:flutter/material.dart';

class AlertDialogWid extends StatefulWidget {

  @override
  State<AlertDialogWid> createState() => _AlertDialogWidState();
}

class _AlertDialogWidState extends State<AlertDialogWid> {
  @override
  bool showImage = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialogy"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (showImage) Image.network("https://m.media-amazon.com/images/M/MV5BYmQwYTc1ZDEtMzU3My00OTIzLWE1YmEtYmUyMmMzZTI2ZWNlXkEyXkFqcGdeQXVyOTgwMzk1MTA@._V1_.jpg"),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () => DialogyWid(context), child: Text("Show Button"),
            )
          ],
        )
      ),
    );
  }

  DialogyWid(context){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Container(
          child: Text("Want to Proceed with this action"),
        ),
        actions: [
          TextButton(onPressed: (){ showImage = true; setState(() {});}, child: Text("Proceed")),
          TextButton(onPressed: () => Navigator.pop(context), child: Text("Cancel"))
        ],
      );
    });
  }
}


