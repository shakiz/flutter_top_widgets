import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChoiceChipWidgets extends StatefulWidget {
  const ChoiceChipWidgets({Key? key}) : super(key: key);

  @override
  _ChoiceChipWidgetsState createState() => _ChoiceChipWidgetsState();
}

class _ChoiceChipWidgetsState extends State<ChoiceChipWidgets> {
  bool _isMale = false, _isFemale = false;
  bool _yes = false, _no = false;

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
        margin: const EdgeInsets.all(16),
        alignment: Alignment.centerLeft,
        color: Colors.white,
        child: Column(children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Select Gender",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: 16),
            ),
          ),
          Row(
            children: [
              ChoiceChip(
                avatar: const Icon(Icons.male),
                label: const Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "Male",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                          fontSize: 16),
                    )),
                selected: _isMale,
                onSelected: (isSelected) {
                  setState(() {
                    _isMale = isSelected;
                    _isFemale = !isSelected;
                  });
                },
              ),
              const SizedBox(width: 8),
              ChoiceChip(
                avatar: const Icon(Icons.female),
                label: const Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "Female",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                          fontSize: 16),
                    )),
                selected: _isFemale,
                onSelected: (isSelected) {
                  setState(() {
                    _isMale = !isSelected;
                    _isFemale = isSelected;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Are you vaccinated?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: 16),
            ),
          ),
          Row(
            children: [
              ChoiceChip(
                label: const Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "Yes",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                          fontSize: 16),
                    )),
                selected: _yes,
                onSelected: (isSelected) {
                  setState(() {
                    _yes = isSelected;
                    _no = !isSelected;
                  });
                },
              ),
              const SizedBox(width: 8),
              ChoiceChip(
                label: const Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "No",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                          fontSize: 16),
                    )),
                selected: _no,
                onSelected: (isSelected) {
                  setState(() {
                    _yes = !isSelected;
                    _no = isSelected;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 8),
        ]),
      ),
    );
  }
}
