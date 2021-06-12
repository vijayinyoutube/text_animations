import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List skills = <String>[
    "Flutter Developer",
    "Content Creator",
    "YouTuber",
    "Blogger",
    "Public Speaker",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildName(),
          buildAnimatedText(),
        ],
      )),
    );
  }

  Widget buildName() => Text(
        "Hai, I'm Vijay",
        style: TextStyle(fontSize: 35.00),
      );

  Widget buildAnimatedText() => AnimatedTextKit(
        animatedTexts: [
          for (var i = 0; i < skills.length; i++) buildText(i),
        ],
        repeatForever: true,
        pause: const Duration(milliseconds: 50),
        displayFullTextOnTap: true,
        stopPauseOnTap: true,
      );

  buildText(int index) {
    return TypewriterAnimatedText(
      skills[index],
      textStyle: const TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
      speed: const Duration(milliseconds: 100),
    );
  }
}
