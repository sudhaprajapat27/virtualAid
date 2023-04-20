import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_digital_clinic_ui/Screen/SplashScreen1.dart';
import 'package:flutter_digital_clinic_ui/Screen/SplashScreen2.dart';
import 'package:flutter_digital_clinic_ui/Screen/SplashScreen3.dart';

import 'AppConfig.dart';

class MyHomePage extends StatefulWidget {
  static String TAG = "/";
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isLoaded=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      /*Navigator.pop(context);
      Navigator.pushNamed(context,SplashScreen1.TAG);*/
      //Navigator.pushReplacementNamed(context, SplashScreen1.TAG);

      setState(() {
        isLoaded=true;
      });

    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return !isLoaded ?Scaffold(
      backgroundColor: AppConfig.splashBackgroundColor,
      body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(image: AssetImage("assets/images/logo.png"),height: 64,width: 64,),
              SizedBox(height: 16,),
              Text("Digital Clinc",style: TextStyle(color: Colors.white,fontSize: 24),)
            ],
          ),
        ),
      ),
    ):
    PageView(
      physics: BouncingScrollPhysics(),
      children: [
        SplashScreen1(),
        SplashScreen2(),
        SplashScreen3()
      ],
    );
  }
}