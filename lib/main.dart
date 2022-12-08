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
          backgroundColor: Color.fromRGBO(49, 27, 146, 1),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                animal("assets/images/inek.png", Colors.pink.shade300,
                    "audio/inek.mp3"),
                animal("assets/images/aslan.png", Colors.orange.shade400,
                    "audio/aslan.mp3"),
                animal("assets/images/at.png", Colors.brown.shade700,
                    "audio/at.mp3"),
                animal(
                    "assets/images/karga.png", Colors.grey, "audio/karga.mp3"),
              ],
            ),
            Column(
              children: [
                animal("assets/images/ayi.png", Colors.brown.shade300,
                    "audio/ayi.mp3"),
                animal("assets/images/kedi.png", Colors.red.shade400,
                    "audio/kedi.mp3"),
                animal("assets/images/kopek.png", Colors.yellow.shade900,
                    "audio/kopek.mp3"),
                animal("assets/images/koyun.png", Colors.purple.shade400,
                    "audio/koyun.mp3"),
              ],
            ),
            Column(
              children: [
                animal("assets/images/kurbaga.png", Colors.green.shade800,
                    "audio/kurba.mp3"),
                animal("assets/images/kurt.png", Colors.grey.shade400,
                    "audio/kurt.mp3"),
                animal("assets/images/maymun.png", Colors.orange.shade400,
                    "audio/maymun.mp3"),
                animal("assets/images/fil.png",
                    Color.fromARGB(255, 19, 67, 107), "audio/fil.mp3"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  animal(String image, Color bgcolor, String audio) {
    return InkWell(
      onTap: (() {
        final player = AudioCache();
        player.play(audio);
      }),
      child: Container(
        height: 120,
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.asset(
          image,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
