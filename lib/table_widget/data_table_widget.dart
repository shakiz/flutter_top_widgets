import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataTableWidget extends StatefulWidget {
  const DataTableWidget({Key? key}) : super(key: key);

  @override
  _DataTableWidgetState createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data table Widget"),
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
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: DataTable(
          columns: const [
            DataColumn(label: Text("ID")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Dept")),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text("1001")),
              DataCell(Text("Sakhawat")),
              DataCell(Text("SWE")),
            ]),
            DataRow(cells: [
              DataCell(Text("1002")),
              DataCell(Text("Jahid")),
              DataCell(Text("SWE")),
            ]),
            DataRow(cells: [
              DataCell(Text("1003")),
              DataCell(Text("Rashed")),
              DataCell(Text("SWE")),
            ]),
            DataRow(cells: [
              DataCell(Text("1004")),
              DataCell(Text("Shakil")),
              DataCell(Text("SWE")),
            ]),
            DataRow(cells: [
              DataCell(Text("1005")),
              DataCell(Text("Sagor")),
              DataCell(Text("SWE")),
            ])
          ],
        ),
      ),
    );
  }
}
