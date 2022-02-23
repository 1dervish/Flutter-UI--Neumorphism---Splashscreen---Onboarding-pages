import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:splasscreen/pages/splashscreen.dart';

class Onboardingpage extends StatefulWidget {
  const Onboardingpage({Key? key}) : super(key: key);

  @override
  _OnboardingpageState createState() => _OnboardingpageState();
}

class _OnboardingpageState extends State<Onboardingpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          pages: [
            PageViewModel(
              bodyWidget: Center(
                child: Text(
                  'This is first screen for onboarding page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    shadows: [
                      Shadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                ),
              ),
              image: Image.asset("assets/home.png"),
              footer: Text('This is footer'),
              titleWidget: Text(
                'This is custom title',
                style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
              ),
            ),
            PageViewModel(
              bodyWidget: Center(
                child: Text(
                  'This is second screen for onboarding page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    shadows: [
                      Shadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                ),
              ),
              image: Image.asset("assets/socialbg.png"),
              footer: Text('This is footer'),
              titleWidget: Text(
                'This is custom title',
                style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
              ),
            ),
            PageViewModel(
              bodyWidget: Center(
                child: Text(
                  'This is last screen for onboarding page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    shadows: [
                      Shadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                ),
              ),
              image: Image.asset("assets/mountain.png"),
              footer: Text('This is footer'),
              titleWidget: Text(
                'This is custom title',
                style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
              ),
            ),
          ],
          onDone: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => SplashScreen()));
          },
          showNextButton: true,
          showSkipButton: true,
          nextFlex: 3,
          dotsFlex: 3,
          skipOrBackFlex: 3,
          animationDuration: 1000,
          curve: Curves.fastOutSlowIn,
          dotsDecorator: DotsDecorator(
            spacing: EdgeInsets.all(5),
            activeColor: Colors.blue,
            activeSize: Size(20, 10),
            size: Size.square(10),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          skip: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.shade300,
                  blurRadius: 10,
                  offset: Offset(4, 4),
                ),
                BoxShadow(
                  color: Colors.blue.shade300,
                  blurRadius: 10,
                  offset: Offset(-4, -4),
                )
              ],
            ),
            child: Center(
              child: Text(
                'Skip',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          next: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10,
                  offset: Offset(4, 4),
                ),
                BoxShadow(
                  color: Colors.blue.shade300,
                  blurRadius: 10,
                  offset: Offset(-4, -4),
                )
              ],
            ),
            child: Center(
              child: Text(
                'Next',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          done: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.shade300,
                  blurRadius: 10,
                  offset: Offset(4, 4),
                ),
                BoxShadow(
                  color: Colors.blue.shade300,
                  blurRadius: 10,
                  offset: Offset(-4, -4),
                )
              ],
            ),
            child: Center(
              child: Text(
                'Done',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
