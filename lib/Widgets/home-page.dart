import 'package:flutter/material.dart';

import '../utils/routes.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 22
          ),
        ),
        centerTitle: true,
      ),
      drawer: MenueDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 100
                ),
                Image.asset("assets/images/development.png"),
                Text("Welcome! This is Home Page",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurple
                  )
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(240, 45)
                  ) ,
                  child: Text("Register"),
                  onPressed: ()=>{
                    print("Register Button Clicked!"),
                    Navigator.pushNamed(context, MyRoutes.RegisterPage)
                  },
                ),
                SizedBox(
                  height: 10
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(240,45)
                  ),
                    child: Text("Login"),
                  onPressed: ()=>{
                      print("Login Button Clicked!"),
                    Navigator.pushNamed(context, MyRoutes.LoginPage)
                  },
                )
              ],
            )
          )
        )
      )
    );
  }
}
