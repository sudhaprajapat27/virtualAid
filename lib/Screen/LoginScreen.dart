import 'package:flutter/material.dart';
import 'package:flutter_digital_clinic_ui/AppConfig.dart';
import 'package:flutter_digital_clinic_ui/Screen/CommonWidget/getCommonWidget.dart';
import 'package:flutter_digital_clinic_ui/Screen/DashboardScreen.dart';
import 'package:flutter_digital_clinic_ui/Screen/ForgetPasswordScreen.dart';
import 'package:flutter_digital_clinic_ui/Screen/SignUpScreen.dart';

class LoginScreen extends StatefulWidget {
  static String TAG = "login";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  TextEditingController _txtEamilId =
      TextEditingController(text: "devam@ramani.com");
  TextEditingController _txtPassword = TextEditingController(text: "123456");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    Widget widgetEmailId = TextField(
      controller: _txtEamilId,
      decoration: InputDecoration(
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          hintText: "EMAIL"),
    );

    Widget widgetPassword = TextField(
      controller: _txtPassword,
      obscureText: true,
      decoration: InputDecoration(
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          hintText: "PASSWORD"),
    );

    Widget widgetForgetPassword =  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){ Navigator.pushNamed(context,ForgetPassowrdScreen.TAG); },
          child: Text("Forget Password?",style: TextStyle(color: AppConfig.splashBackgroundColor),),
        )
      ],
    );

    Widget widgetSignIn = Padding(padding: const EdgeInsets.only(top: 16.0,bottom: 16.0),
      child: InkWell(
        onTap: (){
          Navigator.pushReplacementNamed(context,DashboardScreen.TAG);
        },
        child: Container(
          height: 48.0,
          color: AppConfig.splashBackgroundColor,
          child: Center(child: Text("SIGN IN",style: TextStyle(color: Colors.white),),),
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
                getUserCredentialsHeader(context,heading: "Sign In",details: "Please enter your credential to proceed"),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("EMAIL",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 8.0,),
                      widgetEmailId,
                      SizedBox(height: 16.0,),
                      Text("PASSWORD",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 8.0,),
                      widgetPassword,
                      SizedBox(height: 16.0,),
                      widgetForgetPassword,
                      widgetSignIn,
                      SizedBox(height: 16.0,),
                      getSocialWidget(),
                      Padding(padding: const EdgeInsets.only(top:16.0,
                          bottom: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",style: TextStyle(color: Colors.grey,fontSize: 16.0),),
                            SizedBox(width: 16.0,),
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context,SignUpScreen.TAG);
                              },
                              child: Text("Sign Up",style: TextStyle(color: AppConfig.splashBackgroundColor,fontSize: 16.0),),
                            )
                          ],
                        ),)
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
