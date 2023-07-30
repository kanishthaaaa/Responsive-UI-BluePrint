import 'package:flutter/material.dart';
import 'package:web_basics/constant.dart';
import 'package:web_basics/util/my_box.dart';
import 'package:web_basics/util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultColor,
      appBar: myAppBar,
      body: Row(
        children: [
          //open drawer
          myDrawer,
           Expanded(
             child: Column(
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
                      return const MyTile();
                    },),),
                   ],
                 ),
           ),
            Expanded(
              child: Container(
                height: 400,
                color:  Colors.grey[500],
              ),
            ),
        ],
      ),
    );
  }
}