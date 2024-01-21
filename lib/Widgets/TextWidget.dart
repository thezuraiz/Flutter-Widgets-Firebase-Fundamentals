import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final text;
  const TextWidget({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
        child: Text(text,style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
            fontWeight: FontWeight.w500
          ),
        ),
    );
  }
}
