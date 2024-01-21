import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _userName = "";
  bool flag = false;

  final _formKey = GlobalKey<FormState>();

  MoveToHome(BuildContext context)async{
    if(_formKey.currentState!.validate()) {
      setState(() {
        flag = true;
      });
      // await Future.delayed(Duration(seconds: 2));
      // await Navigator.pushNamed(context, MyRoutes.HomePage);
      setState(() {
        flag = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            Image.asset('assets/images/signup.png'),
            Text(
              "Welcome! ${_userName}",
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
                padding: EdgeInsets.all(30),
                child: Form(
                  key: _formKey,
                  child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "First Name",
                            labelText: "Enter First Name:",
                          ),
                          onChanged: (value) {
                            if (value.length <= 6) {
                              setState(() {
                                _userName = value;
                              });
                            }
                          },
                          validator: (value){
                            if(value!.isEmpty){
                              return "First Name Required";
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Last Name",labelText: "Enter Last Name:"),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Last Name Should Not Be Empty";
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Email", labelText: "Enter Email:"),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Email is Required";
                            }
                            else if(value.endsWith("@gmail.com")){
                              return "Invalid Email";
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Password", labelText: "Enter Password:"),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Password Required";
                            }else if(value.length <6){
                              return "Password Should be greater then 6 Digits";
                            }
                            return null;
                          },

                        ),
                        SizedBox(height: 40),
                        Material(
                            child: InkWell(
                              onTap: ()=>MoveToHome(context),
                              child: AnimatedContainer(
                                alignment: Alignment.center,
                                height: 50,
                                width: flag ? 50 : 150,
                                duration: Duration(seconds: 1),
                                child: flag
                                    ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                  size: 30,
                                )
                                    : Text(
                                  "Register",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(flag ? 50 : 30),
                                  color: Colors.deepPurple,
                                ),
                              ),
                            ),)
                      ],
                )
              )
            )
          ],
        ),
      )),
    );
  }
}
