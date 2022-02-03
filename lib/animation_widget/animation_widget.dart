import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_top_widgets/animation_widget/animated_image_extension.dart';
import 'package:flutter_top_widgets/media_query_extension.dart';

class AnimationWidget extends StatefulWidget {
  const AnimationWidget({Key? key}) : super(key: key);

  @override
  _AnimationWidgetState createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Animation Widget"),
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
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(145, 131, 222, 1),
              Color.fromARGB(160, 105, 154, 13),
            ]
          )
        ),
        width: MediaQueryExtension.getWidth(context),
        child: Column(
          children: const [
            SizedBox(height: 16),
            AnimatedImageExtension(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
