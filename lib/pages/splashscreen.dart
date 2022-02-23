
import 'package:flutter/material.dart';
import 'package:splasscreen/pages/onboardingpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    _navigateToHome();
  }
  _navigateToHome() async{
    await Future.delayed(Duration(milliseconds: 5000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Onboardingpage()));

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.grey[300],
            child:Center(
              child:Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(56),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 15,
                        spreadRadius: 1.0,
                        offset: Offset(
                            4,4
                        ),
                      ),
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 15,
                        spreadRadius: 1.0,
                        offset: Offset(-4,-4),
                      ),
                    ]

                ),
                child: Center(
                    child: Image.network("https://www.freepnglogos.com/uploads/apple-logo-png/apple-logo-png-dallas-shootings-don-add-are-speech-zones-used-4.png",
                      height: 80,
                      color: Colors.black26,
                    )

                ),
              ),
              ),
            )
            )



    );
  }
}
