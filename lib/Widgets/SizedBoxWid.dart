import 'package:flutter/material.dart';

class SizedBoxWid extends StatelessWidget {
  const SizedBoxWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sized Box", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Wrap(
        children: [

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: Text("Simple SizeBox",style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
              ),
              onPressed: (){},
            ),
          ),
          SizedBox(
            height: 100,
          ),
          SizedBox.square(
                dimension: 200,
            child: ElevatedButton(
              child: Text("Square Sized Box"),
              onPressed: (){},
            ),
          ),
          SizedBox(
            height: 50,
            width: 50,
          ),
          Container(
            width: double.infinity,
            height: 60,
            child: SizedBox.expand(
              child: ElevatedButton(
                child: Text("Expended Sized Box"),
                onPressed: (){},
              ),
            ),
          )
        ],
      ),
    );
  }
}
