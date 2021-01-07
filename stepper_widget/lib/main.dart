import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyStepper(),
  ));
}

class MyStepper extends StatefulWidget {
  @override
  __MyStepperState createState() => __MyStepperState();
}

class __MyStepperState extends State<MyStepper> {
  int _currentStep = 0;
  List<Step> mySteps = [
    new Step(title: new Text("Paso 1"), content: new Text("Aprender Flutter")),
    new Step(title: new Text("Paso 2"), content: new Text("Desarrolla App")),
    new Step(title: new Text("Paso 3"), content: new Text("Publica App"))
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo Stepper"),
      ),
      body: new Container(
        child: new Stepper(
          currentStep: this._currentStep,
          steps: mySteps,
          type: StepperType.vertical,
          onStepCancel: () {
            setState(() {
              _currentStep = _currentStep > 0 ? _currentStep - 1 : 0;
              print("Mi paso actual es " + _currentStep.toString());
            });
          },
          onStepContinue: () {
            setState(() {
              _currentStep =
                  _currentStep < mySteps.length - 1 ? _currentStep + 1 : 0;
              print("Mi paso actual es " + _currentStep.toString());
            });
          },
          onStepTapped: (step) {
            setState(() {
              _currentStep = step;
              print("Mi paso actual es " + _currentStep.toString());
            });
          },
        ),
      ),
    );
  }
}
