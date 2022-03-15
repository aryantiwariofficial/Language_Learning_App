import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage.dart' as globals;
import 'package:untitled/pages/func.dart';
import 'package:flutter_tts/flutter_tts.dart';
class StatsPage extends StatefulWidget{
  @override
  _StatsPageState createState() => _StatsPageState();

}

class _StatsPageState extends State<StatsPage> {
  int lol = globals.lole;
  @override
  Widget build(BuildContext context) {
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
                          repeatForever: true,
                          animatedTexts: [
                            RotateAnimatedText(
                              "Welcome, user. You've pressed the button $lol times today.",
                              rotateOut: false,
                            ),
                          ])
                  ),
                ),

              ),
            ),


          ],
        ),
      ),
    );
  }
}


