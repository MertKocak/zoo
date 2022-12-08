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
      backgroundColor: Color.fromARGB(255, 255, 244, 244),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ZOO",
          style:
              TextStyle(fontSize: 50, color: Colors.white, fontFamily: "quick"),
        ),
        backgroundColor: Color.fromARGB(255, 255, 63, 117),
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                height: height / 20,
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
              animal("assets/images/ari.png", Colors.orange.shade300,
                  "audio/at.mp3"),
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
                height: height / 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/kus.png",
                  Color.fromARGB(255, 250, 188, 165), "audio/ayi.mp3"),
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
                height: height / 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/kurbaga.png",
                  Color.fromARGB(255, 47, 189, 52), "audio/kurba.mp3"),
              Container(
                height: height / 40,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/ordek.png",
                  Color.fromARGB(255, 2, 141, 255), "audio/kurt.mp3"),
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
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: (() {
        final player = AudioCache();
        player.play(audio);
      }),
      child: Container(
        height: 140,
        width: 120,
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}
