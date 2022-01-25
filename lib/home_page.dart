import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_top_widgets/stepper_manager/stepper_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            child: const Icon(Icons.menu),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        color: Colors.white,
        child: Column(
          children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )),
              ),
              onPressed: () async {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const StepperManager()));
              },
              //LOGIN //Drawer Main
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Center(
                  child: Text(
                    "Stepper",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
