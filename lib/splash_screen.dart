import 'dart:async';
import 'package:flutter/material.dart';
import 'package:honoringapp/onboarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Onboarding())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        /* decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,

            colors: [Color(0xFFFF800B),Color(0xFFCE1010),]
          ),
        ), */
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Image.asset(
                "assets/honoring_logo2.png",
                height: 350.0,
                width: 350.0,
              ),
            ),
             CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
              ),
            SizedBox(height: 20,),
                 Text(
                    "From",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff7556EB),
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 10,),
              
                Expanded(
                  child: Text(
                    "MADISSO",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff7556EB),
                      fontWeight: FontWeight.bold,
                      fontSize: 26.0,
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
