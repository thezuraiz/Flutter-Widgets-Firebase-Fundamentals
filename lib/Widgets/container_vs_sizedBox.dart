import 'package:flutter/material.dart';

class ContainerandSizedBox extends StatelessWidget {
  const ContainerandSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          // Additional properties on Sized Box
          // padding: EdgeInsets.all(20),
          // margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: Colors.yellow,
              // borderRadius: BorderRadius.circular(20),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                topLeft: Radius.circular(30)
              ),
              // shape: BoxShape.circle
              boxShadow: [
                BoxShadow(
                  blurRadius: 30,
                  spreadRadius: 10,
                  color: Colors.grey
                )
              ],
            
          ),
          child: Center(
            child: Text("I am in Container"),
          ),
        ),
      ),
      // body: Center(
      //   child: SizedBox(
      //     width: 100,
      //     height: 100,
      //     child: Text("I am in Sized Box"),
      //   ),
      );
  }
}

