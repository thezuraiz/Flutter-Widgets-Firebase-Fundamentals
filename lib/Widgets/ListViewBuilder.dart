import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  var item = ["First","Second","Third","Forth","Forth"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Builder"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context,index){
            return ListTile(
              leading: Text("$index",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),
              ),
              title: TextField(),
              trailing: IconButton(
                  icon: Icon(Icons.remove_circle_outline),
              onPressed: (){
                  item.removeAt(index);
                  setState(() {});
              },
              ),
            );
          },
        ),
        ),
    );
  }
}
