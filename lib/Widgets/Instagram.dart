import 'package:flutter/material.dart';

class InstaLoginScreen extends StatelessWidget {
  const InstaLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xfff9801e),
          Color(0xffc52b8d),
          Color(0xff4d5cd3),
          ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        stops: [0.0,0.0,1]
      ),
      ),
    );
  }
}
