import 'package:basic/Pages/WhatsapppScreen.dart';
import 'package:basic/widgets/Listviewbuilder.dart';
import 'package:basic/widgets/TableWid.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWid extends StatefulWidget {
  @override
  State<BottomNavigationBarWid> createState() => _BottomNavigationBarWidState();
}

class _BottomNavigationBarWidState extends State<BottomNavigationBarWid> {
  var currentIndex = 0;
  var textWidgets = [Text("Chat-Screen"), Text("Status-Screen"), Text("Call-Screen")];
  changePage(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: Center(
        child: textWidgets[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.circle_outlined), label: "Status"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
        ],
        currentIndex: currentIndex,
        onTap: changePage,
        elevation: 20,
        backgroundColor: Colors.deepPurpleAccent,
        selectedItemColor: Colors.lightGreenAccent,
        unselectedItemColor: Colors.greenAccent,
      ),
    );
  }
}

class PageNavigationBarWid extends StatefulWidget {
  const PageNavigationBarWid({super.key});

  @override
  State<PageNavigationBarWid> createState() => _PageNavigationBarWidState();
}

class _PageNavigationBarWidState extends State<PageNavigationBarWid> {
  var currentIndex = 0;
  PageController pageController = PageController();
  jumpToPage(index) {
    setState(() {
      currentIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Page Bottom Navigation Bar"),
      // ),
      body: PageView(
        controller: pageController,
        children: [WhatsappScreen(), Listviewbuilder(), TableWid()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.safety_check), label: "Check Security"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
        ],
        currentIndex: currentIndex,
        onTap: jumpToPage,
      ),
    );
  }
}
