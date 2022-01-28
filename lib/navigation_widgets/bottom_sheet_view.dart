import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetView extends StatefulWidget {
  final String sheetTitle;

  const BottomSheetView(this.sheetTitle, {Key? key}) : super(key: key);

  @override
  _BottomSheetViewState createState() => _BottomSheetViewState();
}

class _BottomSheetViewState extends State<BottomSheetView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Center(
            child: Text(
              widget.sheetTitle,
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(onPressed: () {
            Navigator.pop(context);
          }, child: const Text("close"))
        ],
      ),
    );
  }
}
