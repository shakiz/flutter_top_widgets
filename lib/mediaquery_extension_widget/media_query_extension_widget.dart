import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_top_widgets/media_query_extension.dart';

class MediaQueryExtensionWidget extends StatefulWidget {
  const MediaQueryExtensionWidget({Key? key}) : super(key: key);

  @override
  _MediaQueryExtensionWidgetState createState() => _MediaQueryExtensionWidgetState();
}

class _MediaQueryExtensionWidgetState extends State<MediaQueryExtensionWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Query Extension"),
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
        margin: const EdgeInsets.all(16),
        color: Colors.white,
        child: Column(
          children: [
            Center(
              child: Text(
                "Height :  ${MediaQueryExtension.getHeight(context)}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8,),
            Center(
              child: Text(
                "Width: ${MediaQueryExtension.getWidth(context)}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8,),
            Center(
              child: Text(
                "Aspect Ratio: ${MediaQueryExtension.getAspectRatio(context)}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8,),
            Center(
              child: Text(
                "Brightness Level: ${MediaQueryExtension.getBrightNessLevel(context)}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8,),
            Center(
              child: Text(
                "Screen Orientation: ${MediaQueryExtension.getOrientation(context)}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
