import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  
  @override
  Widget build(BuildContext context) {

   

    return MaterialApp(
      home: HomePage(),
    );
  }

}
