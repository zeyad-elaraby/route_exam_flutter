import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'audio_book/home.dart';
import 'moody/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: MoodyHomeScreen.routeName,
        routes: {
          AudioBookHomeScreen.routeName: (context) => AudioBookHomeScreen(),
          MoodyHomeScreen.routeName: (context) => MoodyHomeScreen(),
        });
  }
}
