import 'package:flutter/material.dart';

class TableWid extends StatelessWidget {
  const TableWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table Widget"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            border: TableBorder.all(),
            children: [
              TableRow(
                children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Sap #"),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Name"),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Email"),
                    ),
                  ),
                ]
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("1"),
                    ),
                  ),
                  TableCell(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Zuraiz Khan"),
                  )),
                  TableCell(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("thezuraiz@gmail.som"),
                  ))
                ]
              ),
              TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("2"),
                      ),
                    ),
                    TableCell(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Abdullah Rehman"),
                    )),
                    TableCell(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("@gmail.som"),
                    ))
                  ]
              ),
              TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("3"),
                      ),
                    ),
                    TableCell(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Zuraiz Khan"),
                    )),
                    TableCell(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("thezuraiz@gmail.som"),
                    ))
                  ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
