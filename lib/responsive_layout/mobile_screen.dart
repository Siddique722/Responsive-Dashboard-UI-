import 'package:flutter/material.dart';
import 'package:responsivedashboardui/constants.dart';
import 'package:responsivedashboardui/utils/my_box.dart';
import 'package:responsivedashboardui/utils/my_tile.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myApbar('M O B I L E  S C R E E N'),
      backgroundColor: myBgColor,
      drawer: myDrawer('M O B I L E\n S C R E E N'),
    body: Column(children: [
      AspectRatio(aspectRatio: 1,child: SizedBox(
        width: double.infinity,
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context,index){
          return MyBox();
            }),
      ),),
      Expanded(child: ListView.builder(
          itemCount: 5,
          itemBuilder:(context, index){
            return MyTile();
          } ))
    ]),
    );
  }
}
