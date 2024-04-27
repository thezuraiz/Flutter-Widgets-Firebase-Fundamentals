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
    length: 5,
    child: Scaffold(
      appBar: AppBar(
        title: Text("Your App Title"),
        bottom: const TabBar(
          isScrollable: true,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.green,
          tabs: [
            Tab(text: "Khad"),
            Tab(text: "Uranimum"),
            Tab(text: "Photone"),
            Tab(text: "Uric"),
            Tab(text: "Potisium"),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          // Content for Khad tab
          Container(
            child: Center(
              child: Text("Khad Content"),
            ),
          ),
          // Content for Uranimum tab
          Container(
            child: Center(
              child: Text("Uranimum Content"),
            ),
          ),
          // Content for Photone tab
          Container(
            child: Center(
              child: Text("Photone Content"),
            ),
          ),
          // Content for Uric tab
          Container(
            child: Center(
              child: Text("Uric Content"),
            ),
          ),
          // Content for Potisium tab
          Container(
            child: Center(
              child: Text("Potisium Content"),
            ),
          ),
        ],
      ),
    ),
  );
  }
}
