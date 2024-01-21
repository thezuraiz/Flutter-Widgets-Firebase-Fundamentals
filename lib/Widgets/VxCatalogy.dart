import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'HomePageDetails.dart';

class VxCatalogy extends StatefulWidget {

  @override
  State<VxCatalogy> createState() => _VxCatalogyState();
}

class _VxCatalogyState extends State<VxCatalogy> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadFile();
  }

  loadFile()async{
    final jsonFile = await rootBundle.loadString('assets/files/catalogy.json');
    final decodedData = jsonDecode(jsonFile);
    var products = decodedData['products'];
    await Future.delayed(Duration(seconds: 2));
    CatalogModel.items = List.from(products).map<Item>((product) => Item.fromJson(product)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.CartPage),
        backgroundColor: MyTheme.darkBluish,
        child: Icon(Icons.add_shopping_cart_outlined,),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CatalogyHeader(),
                if(CatalogModel.items.isNotEmpty)
                  CatalogList().expand()
                else
                  Center(
                    child: CircularProgressIndicator(),
                  )
              ],
        )
        ),
      ),
    );
  }
}


class CatalogyHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalogy App".text.xl5.bold.color(MyTheme.darkBluish).make(),
        "Trending Products".text.xl2.make()
      ],
    );
  }
}

class CatalogList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context,index){
        final Catalogy = CatalogModel.getByPosition(index);
        return InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageDetails(Catalogy: Catalogy))),
          child: (
              CatalogyItem(Catalogy: Catalogy)
          ),
        );
      },
    );
  }
}

class CatalogyItem extends StatelessWidget {

  final Item Catalogy;
  const CatalogyItem({super.key, required this.Catalogy});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            Hero(
              tag: Key(Catalogy.id.toString()),
                child: CatalogyImage(image: Catalogy.thumbnail)
            ),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "${Catalogy.title}".text.xl.bold.color(MyTheme.darkBluish).make(),
                    "${Catalogy.description}".text.textStyle(context.captionStyle).maxLines(2).make(),
                    // 5.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "\$${Catalogy.price}".text.xl.bold.make(),
                    addButton(Catalogy: Catalogy)
                  ],
                ).pOnly(right: 8.0)
              ],
            )
            )
          ],
        )
    ).white.roundedLg.make().py16();
  }
}

class CatalogyImage extends StatelessWidget {
  final String image;

  const CatalogyImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.network(image).box.rounded.color(MyTheme.creamColor).make().p16().w40(context);
  }
}

class addButton extends StatefulWidget {
  final Item Catalogy;

  const addButton({super.key, required this.Catalogy});

  @override
  State<addButton> createState() => _addButtonState();
}

class _addButtonState extends State<addButton> {
  var isAdded = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          isAdded = isAdded.toggle();
          final _catalog = CatalogModel();
          final _cart = CartModel();
          _cart.catalog = _catalog;
          _cart.addItem(widget.Catalogy);
          setState(() {});
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(MyTheme.darkBluish),
            shape: MaterialStateProperty.all(StadiumBorder())
        ),
        child: !isAdded? Icon(Icons.add) : Icon(Icons.done)
    );
  }
}
