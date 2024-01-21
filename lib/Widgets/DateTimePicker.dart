import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Datetimepicker extends StatefulWidget {
  const Datetimepicker({super.key});

  @override
  State<Datetimepicker> createState() => _DatetimepickerState();
}

class _DatetimepickerState extends State<Datetimepicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Date Time Picker".text.xl2.bold.make(),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("DatePicker"),
            ElevatedButton(
              child: Text("Select Data"),
              onPressed: () async {
                DateTime? dateTime = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2021),
                    lastDate: DateTime(2023));

                if (dateTime != null) {
                  print(
                      "Date Time: ${dateTime.day}-${dateTime.month}-${dateTime.year}");
                }
              },
            ),
            Text("Time Picker"),
            ElevatedButton(
              child: Text("Select Date"),
              onPressed: () async {
                TimeOfDay? time = await showTimePicker(
                    context: context,
                    initialTime:TimeOfDay.now()
                );
              if (time != null) {
                print(
                    "Date Time: ${time.hour}:${time.minute}");
              }
            },
            )
          ],
        ),
      ),
    );
  }
}