import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_digital_clinic_ui/AppConfig.dart';
import 'package:flutter_digital_clinic_ui/Screen/ClinicListScreen.dart';
import 'package:flutter_digital_clinic_ui/Screen/DashboardScreen.dart';
import 'package:flutter_digital_clinic_ui/Screen/DoctorListScreen.dart';
import 'package:flutter_digital_clinic_ui/Screen/EnterCodeScreen.dart';
import 'package:flutter_digital_clinic_ui/Screen/ForgetPasswordScreen.dart';
import 'package:flutter_digital_clinic_ui/Screen/LoginScreen.dart';
import 'package:flutter_digital_clinic_ui/Screen/NewPasswordScreen.dart';
import 'package:flutter_digital_clinic_ui/Screen/SignUpScreen.dart';
import 'MyHomePage.dart';
import 'package:flutter_digital_clinic_ui/Screen/SplashScreen1.dart';

import 'Screen/SplashScreen2.dart';
import 'Screen/SplashScreen3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Clinc UI',
      theme: ThemeData(

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        MyHomePage.TAG:(context)=>MyHomePage(),
        SplashScreen1.TAG:(context)=>SplashScreen1(),
        SplashScreen2.TAG:(context)=>SplashScreen2(),
        SplashScreen3.TAG:(context)=>SplashScreen3(),
        LoginScreen.TAG:(context)=>LoginScreen(),
        SignUpScreen.TAG:(context)=>SignUpScreen(),
        ForgetPassowrdScreen.TAG:(context)=>ForgetPassowrdScreen(),
        EnterCodeScreen.TAG:(context)=>EnterCodeScreen(),
        NewPasswordScreen.TAG:(context)=>NewPasswordScreen(),
        DashboardScreen.TAG:(context)=>DashboardScreen(),
        ClinicListScreen.TAG:(context)=>ClinicListScreen(),
        DoctorListScreen.TAG:(context)=>DoctorListScreen()

      },
    );
  }
}



