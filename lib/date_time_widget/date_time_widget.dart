import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateTimeWidget extends StatefulWidget {
  const DateTimeWidget({Key? key}) : super(key: key);

  @override
  _DateTimeWidgetState createState() => _DateTimeWidgetState();
}

class _DateTimeWidgetState extends State<DateTimeWidget> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 12, minute: 12);
  DateTime _dateTime = DateTime(2021);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Time Widget"),
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
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )),
              ),
              onPressed: () async {
                DateTime? _newDate  = await showDatePicker(context: context, initialDate: _dateTime, firstDate: DateTime(1900), lastDate: DateTime(2300));
                if (_newDate != null){
                  print("${_dateTime.day} : ${_dateTime.month} : ${_dateTime.year}");
                  setState(() {
                    _dateTime = _newDate;
                  });
                }
              },
              //LOGIN //Drawer Main
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Center(
                  child: Text(
                    "Select Date",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "${_dateTime.day} : ${_dateTime.month} : ${_dateTime.year}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 16,),

            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )),
              ),
              onPressed: () async {
                TimeOfDay? _newTime  = await showTimePicker(context: context, initialTime: _timeOfDay);
                if (_newTime != null){
                  print("${_timeOfDay.hour} : ${_timeOfDay.minute}");
                  setState(() {
                    _timeOfDay = _newTime;
                  });
                }
              },
              //LOGIN //Drawer Main
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Center(
                  child: Text(
                    "Select Time",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "${_timeOfDay.hour} : ${_timeOfDay.minute}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
