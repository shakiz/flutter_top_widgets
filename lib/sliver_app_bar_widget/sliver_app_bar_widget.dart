import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatefulWidget {
  const SliverAppBarWidget({Key? key}) : super(key: key);

  @override
  _SliverAppBarWidgetState createState() => _SliverAppBarWidgetState();
}

class _SliverAppBarWidgetState extends State<SliverAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            floating: true,
            snap: false,
            expandedHeight: 224,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver App Bar"),
              centerTitle: true,
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.all(4),
                child: const Text(
                  "Welcome!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 16),
                )),
            Container(
              height: 1000,
              color: Colors.white,
            ),
          ]))
        ],
      ),
    );
  }
}
