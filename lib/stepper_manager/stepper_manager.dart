import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepperManager extends StatefulWidget {
  const StepperManager({Key? key}) : super(key: key);

  @override
  _StepperManagerState createState() => _StepperManagerState();
}

class _StepperManagerState extends State<StepperManager> {
  int _currentStepIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stepper Manager"),
        leading: Builder(
          builder: (context) => InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Stepper(
          onStepTapped: (currentStepIndex) => setState(() {
            _currentStepIndex = currentStepIndex;
          }),
          currentStep: _currentStepIndex,
          steps: const [
            Step(title: Text("Step 1"), content: Text("This is step 1")),
            Step(title: Text("Step 2"), content: Text("This is step 2")),
            Step(title: Text("Step 3"), content: Text("This is step 3")),
            Step(title: Text("Step 4"), content: Text("This is step 4")),
          ],
        ),
      ),
    );
  }
}
