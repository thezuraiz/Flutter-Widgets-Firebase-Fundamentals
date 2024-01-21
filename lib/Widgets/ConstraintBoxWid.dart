import 'package:flutter/material.dart';

class ConstraintBoxWid extends StatelessWidget {
  const ConstraintBoxWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 50,
            minWidth: 50,
            maxHeight: 80,
            maxWidth: 100,
          ),
          child: Text("Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! 22",
          style: TextStyle(
              fontSize: 55,
            overflow: TextOverflow.ellipsis
            ),
          ),
        ),
      ),
    );
  }
}
