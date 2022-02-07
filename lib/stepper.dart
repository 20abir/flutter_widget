import 'package:flutter/material.dart';

class Stepper_widget extends StatefulWidget {
  @override
  _Stepper_widgetState createState() => _Stepper_widgetState();
}

// ignore: camel_case_types
class _Stepper_widgetState extends State<Stepper_widget> {
  // ignore: prefer_final_fields
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper"),
        centerTitle: true,
      ),
      body: Center(
        child: Stepper(
          steps: const [
            Step(
              title: Text('Step 1'),
              content: Text('Information for Step One'),
            ),
            Step(
              title: Text('Step 2'),
              content: Text('Information for Step Two'),
            ),
            Step(
              title: Text('Step 3'),
              content: Text('Information for Step Three'),
            ),
          ],
          onStepTapped: (int newIndex) {
            setState(() {
              _currentStep = newIndex;
            });
          },
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep != 2) {
              setState(() {
                _currentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (_currentStep != 0) {
              setState(() {
                _currentStep -= 1;
              });
            }
          },
        ),
      ),
    );
  }
}
