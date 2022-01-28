import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableWidget extends StatefulWidget {
  const TableWidget({Key? key}) : super(key: key);

  @override
  _TableWidgetState createState() => _TableWidgetState();
}

class _TableWidgetState extends State<TableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table Widget"),
        leading: Builder(
          builder: (context) => InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Table(
              border: TableBorder.all(color: Colors.blueGrey),
              children: [
                _tableRow,
                _tableRow,
                _tableRow,
                _tableRow,
                _tableRow,
              ],
            ),
            Table(
              border: TableBorder.all(color: Colors.blueGrey),
              children: [
                _tableRow,
                _tableRow,
                _tableRow,
                _tableRow,
                _tableRow,
              ],
            )
          ],
        ),
      ),
    );
  }

  final TableRow _tableRow = const TableRow(
    children: [
      Padding(padding: EdgeInsets.all(4), child: Text("Cell 1"),),
      Padding(padding: EdgeInsets.all(4), child: Text("Cell 2"),),
      Padding(padding: EdgeInsets.all(4), child: Text("Cell 3"),),
      Padding(padding: EdgeInsets.all(4), child: Text("Cell 4"),),
      Padding(padding: EdgeInsets.all(4), child: Text("Cell 5"),)
    ]
  );
}
