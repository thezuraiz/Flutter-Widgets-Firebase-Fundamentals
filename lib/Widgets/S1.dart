import 'package:flutter/material.dart';

class Sessional extends StatelessWidget {
  const Sessional({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            // gradient:LinearGradient(
            //   colors: [Color(0xFF00C6FB), Color(0xFF005BEA)],
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomLeft
            // )
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20
            ),
            child: Column(
              children: [
                SizedBox(height: 40),
                Image.asset("assets/images/InstaText.png"),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "username & email address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
                ButtonBar(
                  children: [
                    TextButton(onPressed: (){},
                        child: Text("Forget Password")
                    )
                  ],
                ),
                ElevatedButton(onPressed: (){},
                  child: Text("Login")
                  ,style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 40),
                    backgroundColor: Colors.blue
                  ),
                  ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding:EdgeInsets.symmetric(horizontal:10.0),
                    child: Container(
                      height: 1,
                      width: 133,
                      color: Colors.blueGrey,
                    ),
                    ),
                    Text("OR"),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 1,
                        width: 133,
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook,color: Colors.blue,),
                    TextButton(onPressed: (){}, child: Text("Login With Facebook",style: TextStyle(
                     color: Colors.blue,
                     fontWeight: FontWeight.bold
                     )
                      ,)
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.fromLTRB(0,15,0,15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an Account?"),
            TextButton(onPressed: (){}, child:
            Text("Sign Up")
            )
          ],
        ),
      ),
    );
  }
}

