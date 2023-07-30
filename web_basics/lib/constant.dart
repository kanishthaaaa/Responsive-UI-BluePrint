import 'package:flutter/material.dart';

var myDefaultColor = Colors.grey[200];

var myAppBar = AppBar(
        backgroundColor: Colors.black,
      );

var myDrawer =  Drawer(
        backgroundColor: Colors.grey[400],
        child: const Column(
          children: [
            DrawerHeader(child: Icon(Icons.headphones)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('D A S H B O A R D'),
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('C O N N E C T'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('A B O U T'),
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('P O R T F O L I O'),
            ),
          ],
        ),
      );