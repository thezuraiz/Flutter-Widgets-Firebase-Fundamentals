import 'dart:async';

import 'package:basic/Pages/register-page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: Image.asset("assets/images/Riphah_logo.png",width: 290,)
      ),
    );
  }
}
