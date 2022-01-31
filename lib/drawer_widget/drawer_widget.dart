import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - 100,
      child: ListView(
        children: [
          Container(
            color: Colors.transparent,
            margin: const EdgeInsets.only(left: 8, right: 16),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.home,
                        size: 24,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: Colors.black, fontSize: 16),
                      ),
                    ],
                  )),
            ),
          ),
          Container(
            color: Colors.transparent,
            margin: const EdgeInsets.only(left: 8, right: 16),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.settings,
                        size: 24,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Settings",
                        style: TextStyle(
                            color: Colors.black, fontSize: 16),
                      ),
                    ],
                  )),
            ),
          ),
          Container(
            color: Colors.transparent,
            margin: const EdgeInsets.only(left: 8, right: 16),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.person,
                        size: 24,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Profile",
                        style: TextStyle(
                            color: Colors.black, fontSize: 16),
                      ),
                    ],
                  )),
            ),
          ),
          Container(
            color: Colors.transparent,
            margin: const EdgeInsets.only(left: 8, right: 16),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.food_bank,
                        size: 24,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Food",
                        style: TextStyle(
                            color: Colors.black, fontSize: 16),
                      ),
                    ],
                  )),
            ),
          ),
          Container(
            color: Colors.transparent,
            margin: const EdgeInsets.only(left: 8, right: 16),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.logout,
                        size: 24,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Logout",
                        style: TextStyle(
                            color: Colors.black, fontSize: 16),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
