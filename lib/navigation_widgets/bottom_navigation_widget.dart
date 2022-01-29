import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_top_widgets/navigation_widgets/bottom_sheet_view.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final List<BottomNavigationBarItem> _bottomNavWidgets = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
        ),
        backgroundColor: Colors.blueGrey,
        label: "Profile"),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      backgroundColor: Colors.deepOrange,
      label: "Home",
    ),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.settings,
        ),
        backgroundColor: Colors.blueAccent,
        label: "Settings"),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation"),
        leading: Builder(
          builder: (context) => InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavWidgets,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        elevation: 4,
        type: BottomNavigationBarType.shifting,
      ),
      body: Center(
        child: getCurrentWidget(_currentIndex),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget getCurrentWidget(index){
    if (index == 0){
      return profileWidget();
    }
    else if (index == 1){
      return homeWidget();
    }
    else if (index == 2){
      return settingsWidget();
    }
    return Container();
  }

  Widget profileWidget(){
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.blueGrey,
      child: Column(
        children: [
          InkWell(
            onTap: (){
              showModalBottomSheet(context: context, builder: (context){
                    return const BottomSheetView("Profile Details CLicked");
                  }
              );
            },
            child: const Text('Show Details',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Widget homeWidget(){
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.deepOrange,
      child: Column(
        children: [
          InkWell(
            onTap: (){
              showModalBottomSheet(context: context, builder: (context){
                return const BottomSheetView("Home Details CLicked");
              }
              );
            },
            child: const Text('Show Details',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Widget settingsWidget(){
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.blueAccent,
      child: Column(
        children: [
          InkWell(
            onTap: (){
              showModalBottomSheet(context: context, builder: (context){
                return const BottomSheetView("Settings Details CLicked");
              }
              );
            },
            child: const Text('Show Details',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
