import 'package:flutter/material.dart';
import 'package:flutter_digital_clinic_ui/AppConfig.dart';

import 'SplashScreen2.dart';

class SplashScreen1 extends StatelessWidget {
  static String TAG="splash1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 32.0,top: 64.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome",style: TextStyle(fontSize: 32,color: AppConfig.splashBackgroundColor),),
                Text("to Digital Clinic",style: TextStyle(fontSize: 32,color: Colors.black),),
                SizedBox(height: 16.0,),
                Text("Far far away, behind the word mountains,",style: TextStyle(color: Colors.grey,fontSize: 16.0),),
                Text("far from the countries Vokalia and Consonantia,",style: TextStyle(color: Colors.grey,fontSize: 16.0),),
                Text("there live the blind texts.",style: TextStyle(color: Colors.grey,fontSize: 16.0),),

                SizedBox(height: 32.0,),
                Image(image: AssetImage("assets/images/slide1.png"),),
              ],
            ),
          ),
          Container(
            child: Padding(padding: const EdgeInsets.only(top: 32.0,right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Skip",style: TextStyle(color: AppConfig.splashBackgroundColor),),
              ],
            )),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              child: Padding(padding: const EdgeInsets.only(bottom: 32.0,right: 16.0),
              child: IconButton(icon: Icon(Icons.arrow_forward,color: AppConfig.splashBackgroundColor,size: 32.0,),color: AppConfig.splashBackgroundColor, onPressed: (){
                Navigator.pushReplacementNamed(context, SplashScreen2.TAG);
              }),),
            ),
          )
        ],
      ),
    );
  }
}
