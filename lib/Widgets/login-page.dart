import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {

  final _loginValidator = GlobalKey<FormState>();

  LoginPageValidator(BuildContext context){
    if(_loginValidator.currentState!.validate()){
      print("User Clicked Login Button");
      // Navigator.pushNamed(context, MyRoutes.HomePage);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 70),
              Image.asset("assets/images/login.png"),
              Text("LOGIN",
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w800,
                  color: Colors.deepPurple,
                )
              ),
             SizedBox(height: 20),
             Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 2),
                 child: Form(
                   key: _loginValidator,
                   child: Column(
                     children: [
                       TextFormField(
                         decoration: InputDecoration(
                             labelText: "Enter UserName:",
                             hintText: "UserName"
                         ),
                         validator: (value) {
                           if(value!.isEmpty){
                             return "Username Should Not be Empty";
                           }else if(!value.endsWith('@gmail.com')){
                             return "Invalid Username";
                           }
                           return null;
                         },
                       ),
                       TextFormField(
                         obscureText: true,
                         decoration: InputDecoration(
                             hintText: "Password",
                             labelText: "Enter Password"
                         ),
                         validator: (value) {
                           if(value!.isEmpty){
                             return "Password Should Not Be Empty";
                           }
                           return null;
                         },
                       ),
                       SizedBox(height: 40),
                       ElevatedButton(
                           style: ElevatedButton.styleFrom(
                               padding: EdgeInsets.symmetric(horizontal: 70,vertical: 15)
                           ),
                           child: Text("Login"),
                           onPressed: ()=>LoginPageValidator(context)
                       )
                     ],
                   ),
                 )
             )
            ],
          ),
        ),
      ),
    );
  }
}
