import 'package:flutter/material.dart';


class FutureWid extends StatefulWidget {
  const FutureWid({super.key});

  @override
  State<FutureWid> createState() => _FutureWidState();
}

Future<int> futureFunction()async{
  Future.delayed(Duration(seconds: 4));
  return 8;
}

class _FutureWidState extends State<FutureWid> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Widget"),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: futureFunction(),
          builder: (context,snapshot){
            if (snapshot.connectionState == ConnectionState.waiting){
              return CircularProgressIndicator();
            }else{
              return Text(snapshot.data.toString());
            }
          },
        ),
    );
  }
}
