import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_top_widgets/animation_widget/animation_widget.dart';
import 'package:flutter_top_widgets/choice_chip_widget/choice_chip_widget.dart';
import 'package:flutter_top_widgets/date_time_widget/date_time_widget.dart';
import 'package:flutter_top_widgets/drawer_widget/drawer_widget.dart';
import 'package:flutter_top_widgets/expansion_tile_and_wrap/expansion_tile_and_wrap.dart';
import 'package:flutter_top_widgets/mediaquery_extension_widget/media_query_extension_widget.dart';
import 'package:flutter_top_widgets/navigation_widgets/bottom_navigation_widget.dart';
import 'package:flutter_top_widgets/page_view_widget/page_view_widget.dart';
import 'package:flutter_top_widgets/scroll_listener_widget/scroll_listener_widget.dart';
import 'package:flutter_top_widgets/sliver_app_bar_widget/sliver_app_bar_widget.dart';
import 'package:flutter_top_widgets/stack_and_positioned_widget/stack_and_positioned_widget.dart';
import 'package:flutter_top_widgets/stepper_manager/stepper_manager.dart';
import 'package:flutter_top_widgets/tab_bar_widget/tab_bar_widget.dart';
import 'package:flutter_top_widgets/table_widget/data_table_widget.dart';
import 'package:flutter_top_widgets/table_widget/table_widget.dart';

import 'adaptive_and_range_widgets/adaptive_and_range_widgets.dart';
import 'appbar_search_delegate/custom_appbar_search_delegate.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Top Flutter Widgets"),
        leading: Builder(
          builder: (context) => InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Icon(Icons.menu),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                  context: context, delegate: CustomAppbarSearchDelegate());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(8),
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StepperManager()));
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Stepper",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AdaptiveAndRangeWidgets()));
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Adaptive and Range Widgets",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChoiceChipWidgets()));
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Choice Chip Widget",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SliverAppBarWidget()));
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Sliver App Bar",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExpansionTileAndWrap()));
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Expansion Tile and Wrap",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DateTimeWidget()));
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Date Time Widget",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const BottomNavigationWidget()));
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Bottom Widgets",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PageViewWidget()));
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Page View Slider Widget",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TableWidget()));
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Table Widget",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  showAboutDialog(
                      context: context,
                      applicationName: "Top Flutter Widgets",
                      applicationIcon: const Icon(Icons.widgets),
                      applicationVersion: "0.0.1",
                      applicationLegalese:
                          "Hello there!! I have built this project to test out latest flutter widgets.");
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "About Dialog",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DataTableWidget()));
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Data Table Widget",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  showCupertinoModalPopup(
                      context: context,
                      builder: (context) => CupertinoActionSheet(
                        title: const Text("Boom ! That is awesome"),
                        actions: [
                          CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Delete")),
                          CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("View")),
                          CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancel")),
                        ],
                      ));
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Cupertino Action Sheet",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScrollListenerWidget()));
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Scroll Notification Manager",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TabBarWidget()));
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Tab Bar Manager",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StackAndPositionedWidget()));
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Stack and Positioned Widget",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MediaQueryExtensionWidget()));
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "MediaQuery Widget",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
                ),
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnimationWidget()));
                },
                //LOGIN //Drawer Main
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Animation Widget",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
