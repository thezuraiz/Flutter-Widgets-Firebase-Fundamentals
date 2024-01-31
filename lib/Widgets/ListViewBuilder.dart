import 'package:flutter/material.dart';

class Listviewbuilder extends StatelessWidget {
  const Listviewbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    var fruitsInventory = {
      "fruits": ['Orange', 'Apple', 'Banana', 'Mango'],
      "retailer": ['Shop-1', 'Shop-2', 'Shop-3', 'Shop-4']
    };

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "List View Builder Practice",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: ListView.builder(
            itemCount: fruitsInventory['fruits']!.length,
            itemExtent: 50, // To make spaces each return
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text("${index + 1}- ${fruitsInventory['fruits']![index]}"),
                  subtitle: Text(fruitsInventory['retailer']![index]),
              );
            },
          ),
        ));
  }
}
