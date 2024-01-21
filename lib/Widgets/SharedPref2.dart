import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref2 extends StatefulWidget {
  const SharedPref2({super.key});

  @override
  State<SharedPref2> createState() => _SharedPref2State();
}

class _SharedPref2State extends State<SharedPref2> {
  var lastLogin;
  var emailController = TextEditingController();


  loadData()async{
  var pref = await SharedPreferences.getInstance();
  lastLogin = await pref.getString("Email");
  setState(() {});
}

  void initState(){
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Pref 2"),
      ),
      body: Container(
        child: Column(
          children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email"
                ),
                controller: emailController,
                validator: (value){
                  if(value!.isEmpty) {
                    return "Email Required";
                  }
                  return null;
                },
              ),
            Container(
              child: ElevatedButton(
                onPressed: ()async{
                  var email = emailController.text.toString();
                  var pref = await SharedPreferences.getInstance();
                  var flag = await pref.setString("Email", email);
                  if(flag){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email Saved")));
                  }

                },
                child: Text("Login"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(lastLogin ?? "Not Loggined"),
          ],
        ),
      ),
    );
  }
}