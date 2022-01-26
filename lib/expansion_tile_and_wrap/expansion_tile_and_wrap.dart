import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpansionTileAndWrap extends StatefulWidget {
  const ExpansionTileAndWrap({Key? key}) : super(key: key);

  @override
  _ExpansionTileAndWrapState createState() => _ExpansionTileAndWrapState();
}

class _ExpansionTileAndWrapState extends State<ExpansionTileAndWrap> {
  List<String> imageUrls = [
    "http://www.davidhechler.com/wp-content/uploads/2016/07/500x500-dummy-image.jpg",
    "http://www.davidhechler.com/wp-content/uploads/2016/07/500x500-dummy-image.jpg",
    "http://www.davidhechler.com/wp-content/uploads/2016/07/500x500-dummy-image.jpg",
    "http://www.davidhechler.com/wp-content/uploads/2016/07/500x500-dummy-image.jpg",
    "http://www.davidhechler.com/wp-content/uploads/2016/07/500x500-dummy-image.jpg",
    "http://www.davidhechler.com/wp-content/uploads/2016/07/500x500-dummy-image.jpg",
  ];

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
      body: Column(
        children: [
          Center(
            child: Wrap(
              children: [
                imageWidget(imageUrls[0]),
                imageWidget(imageUrls[1]),
                imageWidget(imageUrls[2]),
                imageWidget(imageUrls[3]),
                imageWidget(imageUrls[4]),
                imageWidget(imageUrls[5]),
              ],
            ),
          ),
          const SizedBox(width: 16),
          const ExpansionTile(
            title: Text("Click to Expand"),
            leading: Icon(Icons.info),
            children: [
              ListTile(
                title: Text("Sub Menu 1", style: TextStyle(color: Colors.blueGrey, fontSize: 14),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text("Sub Menu 2", style: TextStyle(color: Colors.blueGrey, fontSize: 14),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text("Sub Menu 3", style: TextStyle(color: Colors.blueGrey, fontSize: 14),),
                trailing: Icon(Icons.arrow_forward_ios),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget imageWidget(String url){
    return Padding(padding: const EdgeInsets.all(8),child: Image.network(url, height: 104, width: 104,));
  }
}
