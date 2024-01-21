import 'package:flutter/material.dart';
class FirebaseHome extends StatelessWidget {
  const FirebaseHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Icon(Icons.add_circle),
        ),
      ),
    );
  }
}
