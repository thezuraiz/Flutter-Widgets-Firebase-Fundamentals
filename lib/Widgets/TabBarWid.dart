import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class WhatsappScreen extends StatelessWidget {
  const WhatsappScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(37, 211, 102, 1),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: "WA Business".text.bold.xl2.white.make(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search, color: Colors.white,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.format_list_bulleted, color: Colors.white,),
                  )
                ],
              ),
            ],
          ),
          bottom: TabBar(
            tabs: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: "Chats".text.bold.xl.white.make(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: "Status".text.bold.xl.white.make(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: "Calls".text.bold.xl.white.make(),
              )
            ],
          )
        ),
        body: TabBarView(
          children: [
            ChatscreenWid(),
            ChatscreenWid(),
            CallscreenWid()
          ],
        ),
      ),
    );
  }
}

class ChatscreenWid extends StatelessWidget {
  const ChatscreenWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context,index){
          return ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                child: Icon(Icons.account_circle_sharp,size: 50,color: Colors.green,),
                backgroundColor: Colors.white,
              ),
            ),
            title: "Contact Name".text.bold.make(),
            subtitle: Row(
              children: [
                Icon(Icons.message,size: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8),
                  child: "Messages".text.make(),
                ),
              ],
            ),
            trailing: Column(
              children: [
                "${DateTime.daysPerWeek}/${DateTime.monthsPerYear}/${DateTime.monthsPerYear}".text.textStyle(context.captionStyle).make()
              ],
            ),
          );
        },
      ),
    );
  }
}

class CallscreenWid extends StatelessWidget {
  const CallscreenWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context,index){
          return ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                child: Icon(Icons.account_circle_sharp,size: 50,color: Colors.green,),
                backgroundColor: Colors.white,
              ),
            ),
            title: "Contact Name (${index})".text.red500.bold.make(),
            subtitle: Row(
              children: [
                Icon(Icons.call_missed,color: Colors.red,),
                "${TimeOfDay.hoursPerDay~/2}:${TimeOfDay.minutesPerHour}".text.make()
              ],
            ),
            trailing: Icon(Icons.call,color: Colors.green, size: 28,)
          );
        },
      ),
    );
  }
}
