import 'package:flutter/material.dart';

class CustomTabWid extends StatefulWidget {
  const CustomTabWid({super.key});

  @override
  State<CustomTabWid> createState() => _CustomTabWidState();
}

class _CustomTabWidState extends State<CustomTabWid> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Text("First"),
                  ),
                  Center(
                    child: Text("Second"),
                  ),
                  Center(
                    child: Text("Third"),
                  ),
                ],
              ),
            )
          ),
        )
    );
  }
}
