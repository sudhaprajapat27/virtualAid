import 'package:flutter/material.dart';
import 'package:flutter_digital_clinic_ui/AppConfig.dart';
import 'package:flutter_digital_clinic_ui/Screen/CommonWidget/getCommonWidget.dart';
import 'package:flutter_digital_clinic_ui/Screen/NewPasswordScreen.dart';

class EnterCodeScreen extends StatefulWidget {
  static String TAG = "entercode";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EnterCodeState();
  }
}

class EnterCodeState extends State<EnterCodeScreen> {

  TextEditingController _txtCode =  TextEditingController(text: "8475");


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    Widget widgetCode = TextField(
      controller: _txtCode,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          hintText: "Enter the code"),
    );




    Widget widgetContiune = Column(
      children: [
        Padding(padding: const EdgeInsets.only(top: 16.0),
          child: InkWell(
            onTap: (){
              Navigator.pushReplacementNamed(context, NewPasswordScreen.TAG);
            },
            child: Container(
              height: 48.0,
              color: AppConfig.splashBackgroundColor,
              child: Center(child: Text("CONTINUE",style: TextStyle(color: Colors.white),),),
            ),
          ),),
        Padding(padding: const EdgeInsets.only(top: 8.0,bottom: 16.0),
          child: InkWell(
            onTap: (){

            },
            child: Container(
              height: 48.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppConfig.splashBackgroundColor
                )
              ),
              child: Center(child: Text("RESEND",style: TextStyle(color: AppConfig.splashBackgroundColor),),),
            ),
          ),)
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
                getUserCredentialsHeader(context,heading: "Enter the code",details: "The code was sent to your email"),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("CODE",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 8.0,),
                      widgetCode,
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
