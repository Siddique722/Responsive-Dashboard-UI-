

import 'package:flutter/material.dart';
import 'package:responsivedashboardui/constants.dart';
import 'package:responsivedashboardui/utils/my_box.dart';
import 'package:responsivedashboardui/utils/my_tile.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myApbar('D E S K T O P S C R E E N'),
      backgroundColor: myBgColor,
      body: Row(
        children: [
          myDrawer('D E S K T O P S C R E E N'),
          Expanded(flex: 2,child: Column(children: [
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      return MyBox();
                    }),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return MyTile();
                    }))
          ]),),
          Expanded(child: Column(children: [Expanded(child: Container(color: Colors.pink,))],) )
        ],
      ),
    );
  }
}
