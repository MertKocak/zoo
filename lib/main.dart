import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "ZOO",
            style: TextStyle(
                fontSize: 50, color: Colors.white, fontFamily: "quick"),
          ),
          backgroundColor: Colors.deepPurple.shade900,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                InkWell(
                  onTap: () {
                    debugPrint("inek");
                    final player = AudioCache();
                    player.play("audio/inek.mp3");
                  },
                  child: Container(
                    height: 120,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Colors.pink.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/inek.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    debugPrint("aslan");
                    final player = AudioCache();
                    player.play("audio/aslan.mp3");
                  },
                  child: Container(
                    height: 120,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade400,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/aslan.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    debugPrint("at");
                    final player = AudioCache();
                    player.play("audio/at.mp3");
                  },
                  child: Container(
                    height: 120,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 129, 26, 3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/at.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    debugPrint("karga");
                    final player = AudioCache();
                    player.play("audio/karga.mp3");
                  },
                  child: Container(
                    height: 120,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 45, 44, 44),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/karga.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    debugPrint("ayi");
                    final player = AudioCache();
                    player.play("audio/ayi.mp3");
                  },
                  child: Container(
                    height: 120,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Colors.brown.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/ayi.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    debugPrint("kedi");
                    final player = AudioCache();
                    player.play("audio/kedi.mp3");
                  },
                  child: Container(
                    height: 120,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Colors.red.shade400,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/kedi.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    debugPrint("kopek");
                    final player = AudioCache();
                    player.play("audio/kopek.mp3");
                  },
                  child: Container(
                    height: 120,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade900,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/kopek.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    debugPrint("koyun");
                    final player = AudioCache();
                    player.play("audio/koyun.mp3");
                  },
                  child: Container(
                    height: 120,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Colors.purple.shade400,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/koyun.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    debugPrint("kurbaga");
                    final player = AudioCache();
                    player.play("audio/kurba.mp3");
                  },
                  child: Container(
                    height: 120,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Colors.green.shade800,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/kurbaga.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    debugPrint("kurt");
                    final player = AudioCache();
                    player.play("audio/kurt.mp3");
                  },
                  child: Container(
                    height: 120,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/kurt.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    debugPrint("maymun");
                    final player = AudioCache();
                    player.play("audio/maymun.mp3");
                  },
                  child: Container(
                    height: 120,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade400,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/maymun.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    debugPrint("fil");
                    final player = AudioCache();
                    player.play("audio/fil.mp3");
                  },
                  child: Container(
                    height: 120,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 19, 67, 107),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/fil.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
