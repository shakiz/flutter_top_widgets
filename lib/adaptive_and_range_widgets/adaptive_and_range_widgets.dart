import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveAndRangeWidgets extends StatefulWidget {
  const AdaptiveAndRangeWidgets({Key? key}) : super(key: key);

  @override
  _AdaptiveAndRangeWidgetsState createState() =>
      _AdaptiveAndRangeWidgetsState();
}

class _AdaptiveAndRangeWidgetsState extends State<AdaptiveAndRangeWidgets> {
  RangeValues _rangeValues = RangeValues(1, 9);

  @override
  Widget build(BuildContext context) {
    RangeLabels _rangeLabels = RangeLabels(
        _rangeValues.start.toString(), _rangeValues.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Adaptive Widgets"),
        leading: Builder(
          builder: (context) =>
              InkWell(
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
              RangeSlider(values: _rangeValues,
                labels: _rangeLabels,
                onChanged: (newValues) {
                  setState(() {
                    _rangeValues = newValues;
                  });
                },
                divisions: 8,),
              const SizedBox(height: 4),
              Slider.adaptive(value: 1, onChanged: (newValue) {}),
              const SizedBox(height: 4),
              SwitchListTile.adaptive(title: const Text("Magic"),
                onChanged: (newValue) {},
                value: true,),
              const SizedBox(height: 4),
              Switch.adaptive(value: true, onChanged: (newValue) {}),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.adaptive.arrow_back),
                  Icon(Icons.adaptive.share),
                  Icon(Icons.adaptive.more_rounded),
                  Icon(Icons.adaptive.flip_camera_sharp),
                ],
              ),
              const SizedBox(height: 4),
              const CircularProgressIndicator.adaptive(),
            ]
        ),
      ),
    );
  }
}
