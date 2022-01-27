import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:honoringapp/splash_screen.dart';

void main() {
  /* SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  )); */

  //for disable the screen orientations 
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
  [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        canvasColor: Color(0xff070707),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white)
        )
      ),
      home: SplashScreen(),
    );
  }
  
}


