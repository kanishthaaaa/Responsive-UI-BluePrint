import 'package:flutter/material.dart';
import 'package:web_basics/responsive/desktop_scaffold.dart';
import 'package:web_basics/responsive/mobile_scaffold.dart';
import 'package:web_basics/responsive/responsive_layout.dart';
import 'package:web_basics/responsive/tablet_scaffold.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ResponsiveLayout(
          mobileScaffold: MobileScaffold(),
          tabletScaffold: TabletScaffold(),
          desktopScaffold: DesktopScaffold()),
    );
  }
}
