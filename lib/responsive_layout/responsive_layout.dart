import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
 final Widget mobileScaffold;
 final Widget tablaetScaffold;
 final Widget desktopScaffold;
 ResponsiveLayout({
   required this.mobileScaffold,
   required this.desktopScaffold,
   required this.tablaetScaffold
});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth<500){return mobileScaffold;}
      else if(constraints.maxWidth<1100){return tablaetScaffold;}
      else {return desktopScaffold;}
    });
  }
}
