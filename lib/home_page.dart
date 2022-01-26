import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_top_widgets/adaptive_widgets/adaptive_widgets.dart';
import 'package:flutter_top_widgets/choice_chip_widget/choice_chip_widget.dart';
import 'package:flutter_top_widgets/expansion_tile_and_wrap/expansion_tile_and_wrap.dart';
import 'package:flutter_top_widgets/sliver_app_bar_widget/sliver_app_bar_widget.dart';
import 'package:flutter_top_widgets/stepper_manager/stepper_manager.dart';

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
              //Navigator.of(context).pop();
            },
            child: const Icon(Icons.menu),
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              showSearch(context: context, delegate: CustomAppbarSearchDelegate());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const StepperManager()));
              },
              //LOGIN //Drawer Main
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Center(
                  child: Text(
                    "Stepper",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AdaptiveWidgets()));
              },
              //LOGIN //Drawer Main
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Center(
                  child: Text(
                    "Adaptive Widgets",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ChoiceChipWidgets()));
              },
              //LOGIN //Drawer Main
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Center(
                  child: Text(
                    "Choice Chip Widget",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SliverAppBarWidget()));
              },
              //LOGIN //Drawer Main
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Center(
                  child: Text(
                    "Sliver App Bar",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ExpansionTileAndWrap()));
              },
              //LOGIN //Drawer Main
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Center(
                  child: Text(
                    "Expansion Tile and Wrap",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
