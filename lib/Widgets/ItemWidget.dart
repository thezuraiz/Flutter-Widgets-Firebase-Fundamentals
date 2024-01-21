import 'package:flutter/material.dart';
import '../Model/catalogy.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
        :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
      child: Card(
          shape: StadiumBorder(),
          child: (CatalogModel.items.isNotEmpty) ? ListTile(
            leading: Image.network(item.thumbnail,width: 90),
            title: Text(item.title),
            subtitle: Text(item.description, maxLines: 2),
            trailing: Text("\$${item.price}",
                textScaleFactor: 1.5,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.deepPurple)
            ),
            contentPadding: EdgeInsets.fromLTRB(10,5,10,0),
          ): Center(
            child: CircularProgressIndicator(),
          )
      ),
    );
  }
}
