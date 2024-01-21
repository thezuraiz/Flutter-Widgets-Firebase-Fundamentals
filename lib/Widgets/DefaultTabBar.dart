import 'package:flutter/material.dart';

class DefaultTabWid extends StatefulWidget {
  const DefaultTabWid({super.key});

  @override
  State<DefaultTabWid> createState() => _DefaultTabWidState();
}

class _DefaultTabWidState extends State<DefaultTabWid> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Whatsapp Clone"),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.ad_units),
                  text: "Chats",
                ),
                Tab(
                  icon: Icon(Icons.ad_units),
                  text: "Chats",
                ),
                Tab(
                  icon: Icon(Icons.ad_units),
                  text: "Chats",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Icon(Icons.ac_unit),
              ),
              Center(
                child: Icon(Icons.ac_unit),
              ),
              Center(
                child: Icon(Icons.ac_unit),
              ),
            ],
          ),
        )
    );
  }
}
