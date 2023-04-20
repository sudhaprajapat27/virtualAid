import 'package:flutter/material.dart';
import 'package:flutter_digital_clinic_ui/AppConfig.dart';
import 'package:flutter_digital_clinic_ui/Screen/CommonWidget/getCommonWidget.dart';

class SignUpScreen extends StatefulWidget {
  static String TAG = "signup";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignUpScreenState();
  }
}

class SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _txtName =  TextEditingController(text: "Devam Ramani");
  TextEditingController _txtEamilId =  TextEditingController(text: "devam@ramani.com");
  TextEditingController _txtMobileNumber =  TextEditingController(text: "9712234411");
  TextEditingController _txtPassword = TextEditingController(text: "123456");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    Widget widgetName = TextField(
      controller: _txtName,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          hintText: "NAME"),
    );

    Widget widgetEmailId = TextField(
      controller: _txtEamilId,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          hintText: "EMAIL"),
    );

    Widget widgetMobileNumber = TextField(
      controller: _txtMobileNumber,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          hintText: "MOBILE NUMBER"),
    );

    Widget widgetPassword = TextField(
      controller: _txtPassword,
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          hintText: "PASSWORD"),
    );



    Widget widgetSignUp = Padding(padding: const EdgeInsets.only(top: 16.0,bottom: 16.0),
      child: InkWell(
        onTap: (){

        },
        child: Container(
          height: 48.0,
          color: AppConfig.splashBackgroundColor,
          child: Center(child: Text("SIGN UP",style: TextStyle(color: Colors.white),),),
        ),
      ),);



    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getUserCredentialsHeader(context,heading: "Sign Up",details: "Please enter your credential to proceed"),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      widgetName,
                      SizedBox(height: 8.0,),
                      widgetEmailId,
                      SizedBox(height: 8.0,),
                      widgetMobileNumber,
                      SizedBox(height: 8.0,),
                      widgetPassword,
                      SizedBox(height: 16.0,),
                      widgetSignUp,
                      SizedBox(height: 16.0,),
                      getSocialWidget()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
