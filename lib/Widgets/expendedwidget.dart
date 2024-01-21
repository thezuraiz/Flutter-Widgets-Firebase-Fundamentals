import 'package:flutter/material.dart';

class ExpendedWidget extends StatelessWidget {
  const ExpendedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expended Widget"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  width: 50,
                  color: Colors.grey,
                ),
              )
              ,Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Expanded(
                // Its a ratio property for Expend Widget
                flex: 4,
                child: Container(
                  height: 100,
                  width: 50,
                  color: Colors.tealAccent,
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.greenAccent,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellowAccent,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}
