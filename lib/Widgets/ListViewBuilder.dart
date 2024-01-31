import 'package:flutter/material.dart';

class Listviewbuilder extends StatefulWidget {

  @override
  State<Listviewbuilder> createState() => _ListviewbuilderState();
}

class _ListviewbuilderState extends State<Listviewbuilder> {
  var fruitsInventory = {
    "fruits": ['Orange', 'Apple', 'Banana', 'Mango'],
    "retailer": ['Shop-1', 'Shop-2', 'Shop-3', 'Shop-4']
  };

  @override
  Widget build(BuildContext context) {

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
            // itemExtent: 50, // To make spaces each return
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                    title: Text(fruitsInventory['fruits']![index]),
                    subtitle: Text(fruitsInventory['retailer']![index]),
                  trailing: IconButton(
                    onPressed: (){
                      fruitsInventory['fruits']!.removeAt(index);
                      fruitsInventory['retailer']!.removeAt(index);
                      print('Deleted');
                      setState(() {});
                    },
                    icon: Icon(Icons.delete),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
