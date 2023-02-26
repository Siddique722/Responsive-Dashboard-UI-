import 'package:flutter/material.dart';
import 'package:responsivedashboardui/utils/responsive_layout/desktop_screen.dart';
import 'package:responsivedashboardui/utils/responsive_layout/mobile_screen.dart';
import 'package:responsivedashboardui/utils/responsive_layout/responsive_layout.dart';
import 'package:responsivedashboardui/utils/responsive_layout/tablet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ResPonsive LayOut',
      theme: ThemeData(
      ),
      home: ResponsiveLayout(mobileScaffold: MobileScreen(),
          desktopScaffold: DesktopScreen(),
          tablaetScaffold: TabletScreen())
    );
  }
}

