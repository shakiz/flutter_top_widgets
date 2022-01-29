import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollListenerWidget extends StatefulWidget {
  const ScrollListenerWidget({Key? key}) : super(key: key);

  @override
  _ScrollListenerWidgetState createState() => _ScrollListenerWidgetState();
}

class _ScrollListenerWidgetState extends State<ScrollListenerWidget> {
  String message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scroll Listener Widget"),
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
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                  message
              ),
            ),
            NotificationListener(
                onNotification: (scrollNotification){
                  if (scrollNotification is ScrollStartNotification){
                    setState(() {
                      message = "Start Scrolling";
                    });
                  }
                  else if (scrollNotification is ScrollUpdateNotification){
                    setState(() {
                      message = "Updating Scrolling";
                    });
                  }
                  else if (scrollNotification is ScrollEndNotification){
                    setState(() {
                      message = "Scroll Finished";
                    });
                  }
                  return true;
                },
                child: Expanded(
                  child: ListView.builder(
                      itemCount: 16,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return const ListTile(
                          title: Text("Title"),
                          leading: Icon(Icons.book),
                          trailing: Icon(Icons.info),
                        );
                      }),
                )),
          ],
        ),
      ),
    );
  }
}
