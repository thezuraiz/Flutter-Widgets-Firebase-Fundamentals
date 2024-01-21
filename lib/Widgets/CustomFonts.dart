import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomFont extends StatelessWidget {
  const CustomFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Custom Fonts".text.make(),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            "Custom Fonts Step".text.fontFamily("Font1").xl3.bold.make(),
            SizedBox(height: 50),
            "1- Download Google Font etc".text.fontFamily("Font1").xl3.bold.make(),
            SizedBox(height: 50),
            "2- Add it on Yaml File".text.fontFamily("Font1").xl3.bold.make(),
            SizedBox(height: 50),
            "3- Call it anywhere from its font family name".text.textStyle(context.captionStyle).fontFamily("Font1").xl3.bold.make(),
          ],
        ),
      ),
    );
  }
}