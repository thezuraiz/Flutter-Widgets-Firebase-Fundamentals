import 'package:flutter/material.dart';

class DismissibleWid extends StatefulWidget {
  @override
  State<DismissibleWid> createState() => _DismissibleWidState();
}

class _DismissibleWidState extends State<DismissibleWid> {
  var fruits = ['Banana', 'Mango', 'Orange', 'Peach'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.endToStart) {
                  fruits.removeAt(index);
                } else {
                  fruits.add(fruits[index].toString());
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(fruits[index])));
                }
              },
              background: Container(
                child: Icon(Icons.delete),
                color: Colors.red,
              ),
              secondaryBackground: Container(
                child: Icon(Icons.add),
                color: Colors.yellow,
              ),
              key: Key(fruits[index]),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text(fruits[index]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
