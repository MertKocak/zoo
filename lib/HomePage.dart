import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 244, 244),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ZOO",
          style:
              TextStyle(fontSize: 40, color: Colors.white, fontFamily: "quick"),
        ),
        backgroundColor: Color.fromARGB(255, 236, 74, 163),
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                height: height / 30,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/inek.png", Colors.pink.shade300,
                  "audio/inek.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/aslan.png", Colors.brown.shade400,
                  "audio/aslan.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/yunus.png",
                  Color.fromARGB(255, 255, 140, 140), "audio/yunus.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/karga.png",
                  Color.fromARGB(255, 66, 212, 154), "audio/karga.mp3"),
            ],
          ),
          Column(
            children: [
              Container(
                height: height / 30,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/kus.png",
                  Color.fromARGB(255, 250, 188, 165), "audio/kus.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/kedi.png", Colors.purple.shade400,
                  "audio/kedi.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/kopek.png",
                  Color.fromARGB(255, 231, 104, 0), "audio/kopek.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/koyun.png",
                  Color.fromARGB(255, 203, 17, 235), "audio/koyun.mp3"),
            ],
          ),
          Column(
            children: [
              Container(
                height: height / 30,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/kurbaga.png",
                  Color.fromARGB(255, 47, 189, 52), "audio/kurbaga.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/ordek.png",
                  Color.fromARGB(255, 2, 141, 255), "audio/ordek.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/maymun.png", Colors.orange,
                  "audio/maymun.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/fil.png", Color.fromARGB(255, 21, 101, 192),
                  "audio/fil.mp3"),
            ],
          ),
        ],
      ),
    );
  }

  animal(String image, Color bgcolor, String audio) {
    return Bounce(
      onPressed: (() {
        final player = AudioCache();
        player.play(audio);
      }),
      duration: Duration(milliseconds: 200),
      child: Container(
        height: 140,
        width: 120,
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            image,
          ),
        ),
      ),
    );
  }
}
