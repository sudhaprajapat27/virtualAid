import 'package:flutter/material.dart';
import 'package:flutter_digital_clinic_ui/AppConfig.dart';
import 'package:flutter_digital_clinic_ui/Screen/CommonWidget/getCommonWidget.dart';
import 'package:flutter_digital_clinic_ui/Screen/LoginScreen.dart';

class NewPasswordScreen extends StatefulWidget {
  static String TAG = "newpassword";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewPasswordState();
  }
}

class NewPasswordState extends State<NewPasswordScreen> {

  TextEditingController _txtNewPassword =  TextEditingController(text: "123456");
  TextEditingController _txtRepeatPassword =  TextEditingController(text: "123456");


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    Widget widgetNewPassword = TextField(
      controller: _txtNewPassword,
      obscureText: true,
      decoration: InputDecoration(
          border:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          hintText: "Password"),
    );

    Widget widgetRepeatPassword = TextField(
      controller: _txtRepeatPassword,
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          hintText: "Password"),
    );




    Widget widgetContiune = Column(
      children: [
        Padding(padding: const EdgeInsets.only(top: 16.0),
          child: InkWell(
            onTap: (){
              Navigator.pushReplacementNamed(context,LoginScreen.TAG);
            },
            child: Container(
              height: 48.0,
              color: AppConfig.splashBackgroundColor,
              child: Center(child: Text("CONTINUE",style: TextStyle(color: Colors.white),),),
            ),
          ),),
      ],
    );



    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getUserCredentialsHeader(context,heading: "New password",details: "Create a new password"),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NEW PASSWORD",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 8.0,),
                      widgetNewPassword,
                      SizedBox(height: 8.0,),
                      Text("REPEAT PASSWORD",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 8.0,),
                      widgetRepeatPassword,
                      SizedBox(height: 8.0,),
                      widgetContiune,

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
