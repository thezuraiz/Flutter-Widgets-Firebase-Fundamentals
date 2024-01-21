import 'package:flutter/material.dart';

class Coursera extends StatelessWidget {

  var months = ["January","Febraury","March","April","May","June","July","August","September","October","November","December"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coursera Task",
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: months.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: () async{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${months[index]} Clicked!")));
                await Future.delayed(Duration(seconds: 5));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Nextpage(month: months[index]),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                  // color: Colors.tealAccent,
                ),
                child: ListTile(
                  leading: Icon(Icons.calendar_month),
                  title: Text(months[index]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Nextpage extends StatelessWidget {
  final String month;

  const Nextpage({super.key, required this.month});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( "Next Page",
          style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20
        ),),
        centerTitle: true,
      ),
      body: Center(
        child: Text("You Clicked " + month+ "!", style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),
        ),
      )
    );
  }
}
