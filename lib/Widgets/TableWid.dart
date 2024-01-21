import 'package:flutter/material.dart';

class TableWid extends StatelessWidget {
  const TableWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table Widget"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Table(
            border: TableBorder.all(color: Colors.black),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                  children: [
                    TableCell(
                      child: Text("Table Cell 1"),
                    ),
                    TableCell(
                      child: Text("Table Cell 2"),
                    ),
                    TableCell(
                      child: Text("Table Cell 3"),
                    ),
                  ]
              ),
              TableRow(
                  children: [
                    TableCell(
                      child: Text("Table Cell 4"),
                    ),
                    TableCell(
                      child: Text("Table Cell 4"),
                    )
                    ,TableCell(
                      child: Text("Table Cell 4"),
                    ),
                  ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
