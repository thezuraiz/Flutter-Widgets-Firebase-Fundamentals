import 'package:flutter/material.dart';

class RangeSliderWid extends StatefulWidget {
  const RangeSliderWid({super.key});

  @override
  State<RangeSliderWid> createState() => _RangeSliderWidState();
}

class _RangeSliderWidState extends State<RangeSliderWid> {
  RangeValues values = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar Widget",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: RangeSlider(
            values: values,
            labels: labels,
            divisions: 10,
            min: 0,
            max: 100,
            onChanged: (newValue){
              setState(() {
                values = newValue;
              });
            }
        ),
      ),
    )
    ;
  }
}
