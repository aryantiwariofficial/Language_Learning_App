import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:untitled/pages/func.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FlutterTts flutterTts = FlutterTts();
  String datatochange = 'Click on the Icon to get started.';
  late String lol;

  void changedata(){
    setState(() {
      datatochange = lol;
    });
  }


  @override
  Widget build(BuildContext context) {
    speak(String text) async {
      await flutterTts.setLanguage("en-US");
      await flutterTts.setSpeechRate(0.5);
      await flutterTts.setPitch(1);
      await flutterTts.speak(text);
    }
    String text = 'Welcome, to ABC\'s of Learning.';
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 05,
              child: Container(
                child: Container(
                  width: width,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: DefaultTextStyle(
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontFamily: 'Gruppo',
                        fontWeight: FontWeight.bold,
                      ),
                      child: AnimatedTextKit(
                          totalRepeatCount: 1,
                          animatedTexts: [
                            TyperAnimatedText(
                              "Welcome, to ABC's of Learning.",
                              speed: Duration(milliseconds: 100),
                            ),
                            TyperAnimatedText(
                              datatochange,
                              speed: Duration(milliseconds: 100),
                            ),
                          ])
                  ),
                ),

              ),
            ),
            Container(
              alignment: Alignment(0.0,0.3),
              child: RawMaterialButton(
                onPressed: () {
                  lol = heyo();
                  changedata();
                  speak(lol);
                },
                elevation: 2.0,
                fillColor: Colors.black,
                child: Icon(
                    Icons.headset,
                    color: Colors.white,
                    size: 60.0
                ),
                padding: EdgeInsets.all(15.0),
                shape: CircleBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


