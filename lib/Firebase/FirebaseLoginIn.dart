import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginInPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  signUp(){
    if(formKey.currentState!.validate()){
      FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text.toString(), password: passController.text.toString()).then((value){
        print("User Sign In");
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
      ),
      body: Container(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sign Up"),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Enter Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter an email";
                      } else if (!value.endsWith("@riphah.edu.pk")) {
                        return "Only Riphah Email is allowed";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    controller: passController,
                    validator: (value)
                    {
                      if(value!.isEmpty){
                        return "Value Should not be null";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height:20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: signUp,
                      child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 20),),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}