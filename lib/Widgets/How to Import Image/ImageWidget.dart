import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String path;
  const ImageWidget({super.key,required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset Image Widget",style: TextStyle(fontWeight: FontWeight.w500),),
        centerTitle: true,
      ),
      body: Container(
        child: Image.asset(path,scale: 2),
      ),
    );
  }
}
