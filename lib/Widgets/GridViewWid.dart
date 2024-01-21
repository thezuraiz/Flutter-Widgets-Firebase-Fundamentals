import 'package:flutter/material.dart';

class GridViewWidg extends StatelessWidget {
  var colors = [
    Colors.indigo,
    Colors.orange,
    Colors.red,
    Colors.yellowAccent,
    Colors.tealAccent,
    Colors.deepPurple,
    Colors.deepOrange
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        centerTitle: true,
      ),
      // body: GridCountwid(colors: colors)
      // body: GridExten(colors: colors)
      body: GridExten(colors: colors,)
    );
  }
}

class GridCountwid extends StatelessWidget {
  final List colors;

  const GridCountwid({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        Container(
          color: colors[0],
        ),
        Container(
          color: colors[1],
        ),
        Container(
          color: colors[2],
        ),
        Container(
          color: colors[3],
        ),
        Container(
          color: colors[4],
        ),
        Container(
          color: colors[5],
        ),
      ],
    );
  }
}

class GridExten extends StatelessWidget {
  final List colors;

  const GridExten({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        Container(
          color: colors[0],
        ),
        Container(
          color: colors[1],
        ),
        Container(
          color: colors[2],
        ),
        Container(
          color: colors[3],
        ),
        Container(
          color: colors[4],
        ),
        Container(
          color: colors[5],
        ),
      ],
    );
  }
}

class GridBuilderWid extends StatelessWidget {
  final List colors;
  const GridBuilderWid({super.key,required this.colors});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: colors.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10
        ),
        itemBuilder: (context,index){
          return Container( color: colors[index],);
        }
        );
  }
}
