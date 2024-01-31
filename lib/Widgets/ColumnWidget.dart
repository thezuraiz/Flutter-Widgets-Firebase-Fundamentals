import 'package:flutter/material.dart';
import 'package:s2/Widgets/RowWidget.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Widget"),
      ),
      body: Container(
        height: h;
        width: w;
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Hello"),
              Text("The"),
              Text("Zuraiz"),
            ],
          ),
        ),
      ),
    );
  }
}
