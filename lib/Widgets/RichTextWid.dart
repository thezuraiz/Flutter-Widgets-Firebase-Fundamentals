import 'package:flutter/material.dart';

class RichTextWid extends StatelessWidget {
  const RichTextWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RichText Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: [
              TextSpan(
                text: "Hello! ",
              ),
              TextSpan(
                text: "The_Zuraiz"
              )
            ]
          ),
        ),
      ),
    );
  }
}
