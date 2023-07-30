import 'package:flutter/material.dart';
import 'package:web_basics/constant.dart';
import 'package:web_basics/util/my_box.dart';
import 'package:web_basics/util/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: myDrawer,
      backgroundColor: myDefaultColor,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: 
              SizedBox(
                width: double.infinity,
                child: 
                  // 4 boxes on the top
                  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ), itemBuilder: (context, index){
                    return const MyBox();
                  }),
            
                 
                
              ),
            
          ),
          //tiles
          Expanded(child: ListView.builder(itemCount: 4, itemBuilder: (context, index){
            return MyTile();
          }))
        ],
      ),
    );
  }
}