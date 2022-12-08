import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ZOO",
          style:
              TextStyle(fontSize: 50, color: Colors.white, fontFamily: "quick"),
        ),
        backgroundColor: Color.fromRGBO(49, 27, 146, 1),
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
              animal("assets/images/inek.png",
                  Color.fromARGB(192, 240, 98, 145), "audio/inek.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/aslan.png",
                  Color.fromARGB(184, 255, 168, 38), "audio/aslan.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/at.png", Color.fromARGB(182, 93, 64, 55),
                  "audio/at.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/karga.png",
                  Color.fromARGB(179, 158, 158, 158), "audio/karga.mp3"),
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
              animal("assets/images/ayi.png", Color.fromARGB(173, 153, 52, 16),
                  "audio/ayi.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/kedi.png", Color.fromARGB(181, 239, 83, 80),
                  "audio/kedi.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/kopek.png",
                  Color.fromARGB(176, 245, 127, 23), "audio/kopek.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/koyun.png",
                  Color.fromARGB(173, 170, 71, 188), "audio/koyun.mp3"),
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
                  Color.fromARGB(174, 46, 125, 50), "audio/kurba.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/kurt.png",
                  Color.fromARGB(174, 189, 189, 189), "audio/kurt.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/maymun.png",
                  Color.fromARGB(182, 255, 168, 38), "audio/maymun.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/fil.png", Color.fromARGB(177, 21, 101, 192),
                  "audio/fil.mp3"),
            ],
          ),
        ],
      ),
    );
  }

  animal(String image, Color bgcolor, String audio) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      splashColor: bgcolor,
      onTap: (() {
        final player = AudioCache();
        player.play(audio);
      }),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.asset(
          image,
          width: 120,
          height: 140,
        ),
      ),
    );
  }
}
