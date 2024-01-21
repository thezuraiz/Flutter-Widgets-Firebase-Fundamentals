import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    try{
      var userLogin = FirebaseAuth.instance.currentUser;
      userLogin != null
          ? Navigator.popAndPushNamed(context, "firebase-landing-page")
          : Navigator.popAndPushNamed(context, "firebase-login-page");
    } on FirebaseException catch(ex){
      print("Exception: ${ex.code.toString()}");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Icon(Icons.home),
      ),
    );
  }
}
