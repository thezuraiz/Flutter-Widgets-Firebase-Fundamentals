import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GridCatalogy extends StatefulWidget {
  @override
  State<GridCatalogy> createState() => _GridCatalogyState();
}

class _GridCatalogyState extends State<GridCatalogy> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData()async{
    final jsonFile = await rootBundle.loadString("assets/files/catalogy.json");
    final decodedData = jsonDecode(jsonFile);
    var products = decodedData['products'];
    CatalogModel.items = List.from(products).map<Item>((item) => Item.fromJson(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Catalogy",
        textScaleFactor: 1.5,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          )
        ),
        centerTitle: true,
      ),
      drawer: MenueDrawer(),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12
          ),
        itemCount: CatalogModel.items.length,
        itemBuilder: (context,index){
            var Item = CatalogModel.items[index];
            return(
                Card(
              clipBehavior: Clip.antiAlias  ,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: GridTile(
                header: Container(
                  color: Colors.deepPurple,
                  padding: EdgeInsets.all(20),
                  child: Text(Item.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  )),
                ),
                child: Image.network(Item.thumbnail, fit: BoxFit.contain),
                footer: Container(
                  color: Colors.deepPurple,
                  padding: EdgeInsets.all(20),
                  child: Text("\$${Item.price.toString()}", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  )),
                ),
              ),
            )
            );
        },
      )
    );
  }
}
