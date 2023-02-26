import 'package:flutter/material.dart';

var myBgColor=Colors.grey[300];
  myApbar(String title){
  return AppBar(
    centerTitle: true,
    elevation:10,
    title: Text(title),
    backgroundColor: Colors.grey[900],);
}

 myDrawer(String title){
    return Drawer(
    backgroundColor: Colors.grey[300],
    child: Column(
    children: [
    DrawerHeader(child: Text(title)),
    ListTile(leading: Icon(Icons.home),title: Text('D A S H B O A R D')),
    ListTile(leading: Icon(Icons.chat),title: Text('M E S S A G E')),
    ListTile(leading: Icon(Icons.settings),title: Text('S E T T I N G S')),
    ListTile(leading: Icon(Icons.logout),title: Text('L O G O U T')),
],
),
);
}