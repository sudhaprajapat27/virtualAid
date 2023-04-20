import 'package:flutter/material.dart';
import 'package:flutter_digital_clinic_ui/AppConfig.dart';
import 'package:flutter_digital_clinic_ui/Screen/CommonWidget/getCommonWidget.dart';
import 'package:flutter_digital_clinic_ui/Screen/EnterCodeScreen.dart';

class ForgetPassowrdScreen extends StatefulWidget {
  static String TAG = "forgetpassword";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ForgetPassowrdState();
  }
}

class ForgetPassowrdState extends State<ForgetPassowrdScreen> {

  TextEditingController _txtEamilId =  TextEditingController(text: "devam@ramani.com");

  String _heading;
  String _details;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    Widget widgetEmailId = TextField(
      controller: _txtEamilId,
      decoration: InputDecoration(
          border:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          hintText: "Email"),
    );




    Widget widgetContiune = Padding(padding: const EdgeInsets.only(top: 16.0,bottom: 16.0),
      child: InkWell(
        onTap: (){
          Navigator.pushReplacementNamed(context,EnterCodeScreen.TAG);
        },
        child: Container(
          height: 48.0,
          color: AppConfig.splashBackgroundColor,
          child: Center(child: Text("CONTINUE",style: TextStyle(color: Colors.white),),),
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
                getUserCredentialsHeader(context,heading: "Reset Password",details: "Please enter your email address. A code will be sent to your email"),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("EMAIL",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 8.0,),
                      widgetEmailId,
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
