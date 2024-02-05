import 'package:flutter/material.dart';

class TabbarWid extends StatelessWidget {
  const TabbarWid({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Tab Bar Widget",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.deepPurple,
                ),
              ),
              Tab(
                icon: Icon(Icons.safety_divider, color: Colors.deepPurple),
              ),
              Tab(
                icon: Icon(Icons.call, color: Colors.deepPurple),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.teal,
              child: Icon(Icons.add),
            ),
            Container(
              color: Colors.teal,
              child: Icon(Icons.contact_mail_outlined),
            ),
            Container(
              color: Colors.teal,
              child: Icon(Icons.call),
            ),
          ],
        ),
      ),
    );
  }
}
