import 'package:flutter/material.dart';

class SnackBarWid extends StatelessWidget {
  const SnackBarWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(horizontal: 30)
            ),
            child: Text("Click Me",style: TextStyle(color: Colors.white,fontSize: 20),),
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    action: SnackBarAction(
                      label: "Undo",
                      onPressed: (){
                        print("Undo");
                      },
                    ),
                    behavior: SnackBarBehavior.floating,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.deepPurple,
                    dismissDirection: DismissDirection.horizontal,
                      content: Text("I am SnackBar"),
                  ),
              );
            },
          ),
        ),
      ),
    );
  }
}
