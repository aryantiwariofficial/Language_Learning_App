import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ChangeLog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/xd.png'),
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
                        color: Colors.white,
                        fontFamily: 'Gruppo',
                        fontWeight: FontWeight.bold,
                      ),
                      child: AnimatedTextKit(
                          totalRepeatCount: 1,
                          repeatForever: true,
                          animatedTexts: [
                            FadeAnimatedText(
                                'ABOUT ME:',

                            ),

                            TyperAnimatedText(
                              "I'm Niyas Hameed, a freelancer based in Chennai, IN. ",
                            ),
                            TyperAnimatedText(
                              "Specializing in Design (and occasionally UI designing).",
                            ),
                            TyperAnimatedText(
                              "Exceptional Posters, Applications, and everything in between.",
                            ),
                            TyperAnimatedText(
                              "APP IDEA: ARYAN TIWARI.",
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










