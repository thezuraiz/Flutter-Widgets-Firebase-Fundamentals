import 'package:flutter/material.dart';

class StepperWid extends StatelessWidget {
  const StepperWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper"),
        centerTitle: true,
      ),
      body: Container(
        child: Stepper(
          steps: [
            Step(
                title: Text("Stepper"),
                content: Text("Stepper Content")
            ),
            Step(
                title: Text("Stepper"),
                content: Text("Stepper Content")
            ),
            Step(
                title: Text("Stepper"),
                content: Text("Stepper Content")
            )
          ],
        ),
      ),
    );
  }
}
