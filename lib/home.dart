import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honoringapp/deceased_info.dart';
import 'package:honoringapp/readqr.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
        actions: [
          IconButton(onPressed: (){
            if (Platform.isAndroid) {
                    SystemNavigator.pop();
                  } else if (Platform.isIOS) {
                    exit(0);
                  }
          }, icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Expanded(
               flex: 5,
               child: SvgPicture.asset(
                            "assets/angel.svg",
                            height: 300,
                          ),
             ),
           
            Expanded(
              child: Container(
              height: 80,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton.icon(
                    onPressed: () {
                      //Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>CreateScreen()));
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ScanScreen()));
                      print("Creating qr code");
                    },
                    label: Text("   Scan a QR code       ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
                    icon: Icon(Icons.qr_code,size: 30),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      elevation: 10,
                      shadowColor: Colors.white,
                    ),),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
              height: 80,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton.icon(
                    onPressed: () {
                      //Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ScanScreen()));
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> DeceasedInfo()));
                      print("Read qr code");
                    },
                    label: Text("   Order a Tombstone",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
                    icon: Icon(Icons.topic_outlined,size: 30),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      elevation: 10,
                      shadowColor: Colors.white,
                    ),),
              ),
            ),
            Expanded(
              flex: 1,
              child: 
            Container())
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}