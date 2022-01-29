import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackAndPositionedWidget extends StatefulWidget {
  const StackAndPositionedWidget({Key? key}) : super(key: key);

  @override
  _StackAndPositionedWidgetState createState() =>
      _StackAndPositionedWidgetState();
}

class _StackAndPositionedWidgetState extends State<StackAndPositionedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack and Positioned Widget"),
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
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 400,
              child: Stack(
                children: [
                  Positioned(
                      top: 20,
                      left: 20,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 160,
                          width: 160,
                          color: Colors.green,
                          padding: const EdgeInsets.all(8),
                          child: const Text(
                            "Green Box",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 60,
                      left: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 160,
                          width: 160,
                          color: Colors.red,
                          padding: const EdgeInsets.all(8),
                          child: const Text(
                            "Red Box",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 100,
                      left: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 160,
                          width: 160,
                          color: Colors.deepOrange,
                          padding: const EdgeInsets.all(8),
                          child: const Text(
                            "Deep Orange Box",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 140,
                      left: 140,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 160,
                          width: 160,
                          color: Colors.black54,
                          padding: const EdgeInsets.all(8),
                          child: const Text(
                            "Black Box",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      ))
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 160,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  children: [
                    Container(
                      height: 160,
                      width: 160,
                      color: Colors.green,
                      alignment: Alignment.topCenter,
                      padding: const EdgeInsets.all(8),
                      child: const Text(
                        "Put Your Image Here",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                    const Positioned(
                      bottom: 16,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text(
                          "Caption Here",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
