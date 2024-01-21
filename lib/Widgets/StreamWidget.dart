import 'package:flutter/material.dart';

class StreamWidget extends StatefulWidget {
  const StreamWidget({super.key});

  @override
  State<StreamWidget> createState() => _StreamWidgetState();
}

class _StreamWidgetState extends State<StreamWidget> {

  Stream<DateTime> streamFunction()async*{
    while(true){
      await Future.delayed(Duration(seconds: 1));
      yield DateTime.timestamp();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream Widget"),
        centerTitle: true,
      ),
      body: StreamBuilder(
          stream: streamFunction(),
          builder: (context,snapShot){
            return Text(snapShot.data.toString());
          }
      ),
    );
  }
}
