import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:velocity_x/velocity_x.dart';

class InputDataWid extends StatelessWidget {

  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "User Input Data".text.bold.xl2.make(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 350,
            child: Column(
              children: [
                SizedBox(height: 65),
                Image.asset("assets/images/Riphah_logo.png").h(300),
                SizedBox(height: 50),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.orange, width: 50 // Not Working
                          ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  controller: passController,
                  decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.remove_red_eye_rounded),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(width: 3, color: Colors.orange))),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: "Login".text.xl2.bold.make(),
                  onPressed: () {
                    var Email = emailController.text;
                    var Password = passController.text;
                    print("Email: ${Email} \n Password: ${Password}");
                  },
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(), padding: EdgeInsets.all(12),
                  backgroundColor: Colors.indigo),
                ).wFull(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
