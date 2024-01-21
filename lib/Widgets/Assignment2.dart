import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class InstaLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
          body: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: VxBox(
                    child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/InstaText.png'),
                      SizedBox(height: 40),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Phone Number, username or email address",
                          fillColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                        ),
                      ),
                      ButtonBar(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: "Forget Password?"
                                  .text
                                  .color(Colors.blue)
                                  .bold
                                  .make())
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: "Login".text.bold.make(),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 40),
                            backgroundColor: Colors.blue),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Container(
                                  height: 1.0,
                                  width: 133.0,
                                  color: Colors.grey)),
                          'OR'.text.color(Colors.grey).extraBold.make().px2(),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Container(
                                  height: 1.0,
                                  width: 133.0,
                                  color: Colors.grey)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 60),
                          Icon(
                            Icons.facebook,
                            color: Colors.blue,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: "Login With Facebook"
                                  .text
                                  .bold
                                  .color(Colors.blue)
                                  .make()
                                  .px8())
                        ],
                      )
                    ],
                  ),
                ),
                ).make(),
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "Don't Have An Account?"
                      .text
                      .textStyle(context.captionStyle)
                      .semiBold
                      .make(),
                  TextButton(
                      onPressed: () {},
                      child: "Sign Up".text.extraBold.color(Colors.blue).make())
                ],
              ))),
    );
  }
}
