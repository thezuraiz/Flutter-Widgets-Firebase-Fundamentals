import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Zuraiz Khan",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                accountEmail: Text("thezuraiz@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("Assets/Images/123.png"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.white, size: 30),
                title: Text("Home",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(
                  Icons.add_circle,
                  size: 30,
                  color: Colors.white,
                ),
                title: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onTap: (){},
              ),
              ListTile(
                title: Text("Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 20)
                ),
                leading: Icon(Icons.search,color: Colors.white, size: 30),
                onTap: (){},
              ),
              ListTile(
                title: Text("Catalogy", style: TextStyle(color: Colors.white, fontSize: 20)
                ),
                leading: Icon(Icons.list, color: Colors.white),
                onTap: (){},
              ),
              ListTile(
                title: Text("Grid Catalogy", style: TextStyle(color: Colors.white, fontSize: 20)),
                leading: Icon(Icons.grid_3x3, color: Colors.white,),
                onTap: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}
