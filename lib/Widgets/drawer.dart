import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../utils/routes.dart';

class MenueDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text(
                  "Zuraiz Khan",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                accountEmail: Text("zoraizaamir2002@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png"),
                ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white, size: 30),
              title: Text("Home",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              onTap: (){
                Navigator.pushNamed(context, MyRoutes.HomePage);
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.largecircle_fill_circle,
                size: 30,
                color: Colors.white,
              ),
              title: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: (){
                Navigator.pushNamed(context, MyRoutes.LoginPage);
              },
            ),
            ListTile(
              title: Text("Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 20)
              ),
              leading: Icon(CupertinoIcons.selection_pin_in_out,color: Colors.white, size: 30),
              onTap: (){
                Navigator.pushNamed(context, MyRoutes.RegisterPage);
              },
            ),
            ListTile(
              title: Text("Catalogy", style: TextStyle(color: Colors.white, fontSize: 20)
              ),
              leading: Icon(CupertinoIcons.list_bullet, color: Colors.white),
              onTap: (){
                Navigator.pushNamed(context, MyRoutes.Catalogy);
              },
            ),
            ListTile(
              title: Text("Grid Catalogy", style: TextStyle(color: Colors.white, fontSize: 20)),
              leading: Icon(CupertinoIcons.grid, color: Colors.white,),
              onTap: (){
                Navigator.pushNamed(context, MyRoutes.GridCatalogy);
              },
            )
          ],
        ),
      ),
    );
  }
}
