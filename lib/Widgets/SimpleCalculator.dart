import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Basic Calculator",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: no1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Input 1"),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: no2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Input 1"),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          var first = int.parse(no1Controller.text.toString());
                          var second = int.parse(no2Controller.text.toString());
                          result = first + second;
                        });
                      },
                      child: Icon(Icons.add)),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          var first = int.parse(no1Controller.text.toString());
                          var second = int.parse(no2Controller.text.toString());
                          result = first - second;
                        });
                      },
                      child: Icon(CupertinoIcons.minus)),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          var first = int.parse(no1Controller.text.toString());
                          var second = int.parse(no2Controller.text.toString());
                          result = first * second;
                        });
                      },
                      child: Icon(CupertinoIcons.multiply)),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          var first = int.parse(no1Controller.text.toString());
                          var second = int.parse(no2Controller.text.toString());
                          result = first / second;
                          result = result.toStringAsFixed(2); // to use after . digits
                        });
                      },
                      child: Icon(CupertinoIcons.divide)),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              result != null
                  ? ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.add_road_outlined,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "${result}",
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    )
                  : SizedBox(
                      height: 0,
                    ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.clear),
        onPressed: () {
          no1Controller.text = "";
          no2Controller.text = "";
          result = null;
          setState(() {});
        },
      ),
    );
  }
}
