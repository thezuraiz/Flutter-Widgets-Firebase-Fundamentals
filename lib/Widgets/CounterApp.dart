import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  var _counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Counter App Started");
  }

  @override
  void dispose() {
    print("Counter App Distroyed");
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22
        ),),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Counter: ${_counter}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 20,),
              FloatingActionButton(onPressed: (){
                setState(() {
                  _counter++;
                });
              },
              child: Icon(Icons.add),)
            ],
          ),
        ),
      ),
    );
  }
}
