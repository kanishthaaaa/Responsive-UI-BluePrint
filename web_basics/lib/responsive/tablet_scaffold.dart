import 'package:flutter/material.dart';
import 'package:web_basics/constant.dart';
import 'package:web_basics/util/my_box.dart';
import 'package:web_basics/util/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: myDrawer,
      backgroundColor: myDefaultColor,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child:
                  // 4 boxes on the top
                  Expanded(
                    child: GridView.builder(
                        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return const MyBox();
                        }),
                  ),
            ),
          ),
          //tiles
          Expanded(
              child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return MyTile();
                  }))
        ],
      ),
    );
  }
}
