import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
            appBar: AppBar(
              title: Text("I am App Bar"),
            ),
            drawer: Drawer(),
            body: Center(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Text("I am Zuraiz Sap: 34873",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      textScaleFactor: 2.0,
                      maxLines: 20,
                      selectionColor: Colors.brown,
                      semanticsLabel: "Label",
                      softWrap: true,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          backgroundColor: Colors.blueGrey,
                          color: Colors.yellowAccent,
                          fontSize: 22,
                          letterSpacing: 10,
                          textBaseline: TextBaseline.alphabetic,
                          shadows: [Shadow(color: Colors.red)]
                      )
                  ),
                  SizedBox(height: 50),
                  Text("Types of Buttons",
                  style: TextStyle(
                    fontSize: 39,
                    fontWeight: FontWeight.w700,
                    color: Colors.deepPurple
                  ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    child: Text("Elevated Button"),
                    onPressed: (){
                      print("User Clicked Elevated Button");
                    },
                  ),
                  FilledButton(
                    child: Text("Elevated Button"),
                    onPressed: (){
                      print("User Clicked Filled Button");
                    }
                  ),
                  OutlinedButton(
                    child: Text("Elevated Button"),
                    onPressed: (){
                      print("User Clicked Outlined Button");
                    },
                  ),
                  FloatingActionButton(
                    child: Icon(Icons.dangerous),
                    onPressed: (){
                      print("User Clicked FAB Button");
                    }
                  ),
                  IconButton(
                    icon: Icon(Icons.done),
                    onPressed: (){
                      print("User Clicked Icon Button");
                    },
                    iconSize: 60,
                  )
                ],
              ),
            )));
  }
}
