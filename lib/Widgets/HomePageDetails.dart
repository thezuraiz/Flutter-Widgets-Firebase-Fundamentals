import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePageDetails extends StatelessWidget {
  final Item Catalogy;

  const HomePageDetails({super.key, required this.Catalogy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "${Catalogy.title}".text.medium.xl.make(),
      ),
      body: Column(
        children: [
          Hero(
              tag: Key(Catalogy.id.toString()),
              child: Container(
                  color: MyTheme.creamColor,
                  child: Image.network(Catalogy.thumbnail))
          ),
          VxArc(
              arcType: VxArcType.convex,
              edge: VxEdge.top,
              height: 30,
              child: Container(
                padding: EdgeInsets.all(20),
                width: context.screenWidth,
                color: Colors.white,
                child: Column(
                  children: [
                    "${Catalogy.title}".text.xl4.bold.make().py32(),
                    "${Catalogy.description}".text.textStyle(context.captionStyle).make(),
                  ],
                ),
              ),
            ).expand(),
        ],
      ),
      bottomNavigationBar: Container(
        // color: Colors.white,
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${Catalogy.price}".text.bold.red900.xl3.make(),
          addButton(Catalogy: Catalogy).wh(100, 50)
          ],
        ),
      ),
    );
  }
}
