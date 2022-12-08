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
                height: height / 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/inek.png", Colors.pink.shade300,
                  "audio/inek.mp3"),
              Container(
                height: height / 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/aslan.png", Colors.orange.shade400,
                  "audio/aslan.mp3"),
              Container(
                height: height / 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/at.png", Colors.brown.shade700,
                  "audio/at.mp3"),
              Container(
                height: height / 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/karga.png", Colors.grey, "audio/karga.mp3"),
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
              animal("assets/images/ayi.png", Colors.brown.shade300,
                  "audio/ayi.mp3"),
              Container(
                height: height / 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/kedi.png", Colors.red.shade400,
                  "audio/kedi.mp3"),
              Container(
                height: height / 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/kopek.png", Colors.yellow.shade900,
                  "audio/kopek.mp3"),
              Container(
                height: height / 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/koyun.png", Colors.purple.shade400,
                  "audio/koyun.mp3"),
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
              animal("assets/images/kurbaga.png", Colors.green.shade800,
                  "audio/kurba.mp3"),
              Container(
                height: height / 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/kurt.png", Colors.grey.shade400,
                  "audio/kurt.mp3"),
              Container(
                height: height / 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/maymun.png", Colors.orange.shade400,
                  "audio/maymun.mp3"),
              Container(
                height: height / 20,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              animal("assets/images/fil.png", Color.fromARGB(255, 19, 67, 107),
                  "audio/fil.mp3"),
            ],
          ),
        ],
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
