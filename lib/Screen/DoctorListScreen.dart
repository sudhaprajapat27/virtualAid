import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_digital_clinic_ui/AppConfig.dart';
import 'package:flutter_digital_clinic_ui/Screen/CommonWidget/getCommonWidget.dart';

import 'Data/doctorData.dart';

class DoctorListScreen extends StatefulWidget {
  static String TAG = "doctorlist";

  @override
  _DoctorListScreenState createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text("All Doctors", style: TextStyle(color: Colors.black),),
              actions: [
                IconButton(icon: Icon(Icons.search, color: Colors.grey,), onPressed: () {}),
                IconButton(icon: Icon(Icons.location_on, color: Colors.grey,), onPressed: () {}),
              ],
              bottom:
              TabBar(labelColor: AppConfig.splashBackgroundColor, tabs: [
                Tab(text: "ALL DOCTOR",),
                Tab(text: "MY DOCTOR",),
              ]),
            ),
            body: TabBarView(children: [
              AllDoctor(),
              MyDoctor(),
            ]),
          )),
    );
  }
}

class AllDoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: lstDoctor.length,
          itemBuilder: (_, index) {
            return getDoctorCard(lstDoctor[index]);
          }),
    );
  }
}


class MyDoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: lstDoctor.length,
          itemBuilder: (_, index) {
            return getDoctorCard(lstDoctor[index]);
          }),
    );
  }
}
