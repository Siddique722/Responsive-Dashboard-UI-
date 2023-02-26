import 'package:flutter/material.dart';
import 'package:responsivedashboardui/constants.dart';
import 'package:responsivedashboardui/utils/my_box.dart';
import 'package:responsivedashboardui/utils/my_tile.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({Key? key}) : super(key: key);

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myApbar('T A B L E T S C R E E N'),
      backgroundColor: myBgColor,
      drawer: myDrawer('T A B L E T\nS C R E E N'),
      body: Column(children: [
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
      ]),
    );
  }
}
