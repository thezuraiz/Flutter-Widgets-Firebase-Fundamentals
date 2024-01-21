import 'package:flutter/material.dart';
class SingleChildScroll extends StatelessWidget {
  const SingleChildScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Child Scroll View", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right :11),
                      height: 250,
                      width: 250,
                      color: Colors.greenAccent,
                    ),
                    Container(
                      margin: EdgeInsets.only(right :11),
                      height: 250,
                      width: 250,
                      color: Colors.orange,
                    ),
                    Container(
                      margin: EdgeInsets.only(right :11),
                      height: 250,
                      width: 250,
                      color: Colors.red,
                    ),
                    Container(
                      height: 250,
                      width: 250,
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom:11,top: 11),
                height: 250,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.only(bottom:11),
                height: 250,
                color: Colors.yellow,
              ),
              Container(
                margin: EdgeInsets.only(bottom:11),
                height: 250,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
