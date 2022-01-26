import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveWidgets extends StatefulWidget {
  const AdaptiveWidgets({Key? key}) : super(key: key);

  @override
  _AdaptiveWidgetsState createState() => _AdaptiveWidgetsState();
}

class _AdaptiveWidgetsState extends State<AdaptiveWidgets> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adaptive Widgets"),
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
        child: Column(
          children: [
            Slider.adaptive(value: 1, onChanged: (newValue){}),
            SwitchListTile.adaptive(title: const Text("Magic"), onChanged: (newValue){}, value: true,),
            Switch.adaptive(value: true, onChanged: (newValue){}),
            Row(
              children: [
                Icon(Icons.adaptive.arrow_back),
                Icon(Icons.adaptive.share),
                Icon(Icons.adaptive.more_rounded),
                Icon(Icons.adaptive.flip_camera_sharp),
              ],
            ),
            const CircularProgressIndicator.adaptive(),
          ]
        ),
      ),
    );
  }
}
