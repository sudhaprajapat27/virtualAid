import 'package:flutter/material.dart';
import 'package:flutter_digital_clinic_ui/AppConfig.dart';
import 'package:flutter_digital_clinic_ui/Screen/ClinicListScreen.dart';
import 'package:flutter_digital_clinic_ui/Screen/DoctorListScreen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DashboardScreen extends StatefulWidget{
  static String TAG ="dashboard";
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DashboardScreenState();
  }
  
}
class DashboardScreenState extends State<DashboardScreen>{


  var lstOptions=[
    {
      "icon":"assets/images/doctor.png",
      "title":"Doctors",
      "description":"Short Description"
    },
    {
      "icon":"assets/images/clinic.png",
      "title":"Clinics",
      "description":"Short Description"
    },
    {
      "icon":"assets/images/specialities.png",
      "title":"Specialities",
      "description":"Short Description"
    },
    {
      "icon":"assets/images/labs.png",
      "title":"Labs",
      "description":"Short Description"
    },
    {
      "icon":"assets/images/insurance.png",
      "title":"Insurance",
      "description":"Short Description"
    },
    {
      "icon":"assets/images/articles.png",
      "title":"Related Articles",
      "description":"Short Description"
    },
    {
      "icon":"assets/images/emergency.png",
      "title":"Related Articles",
      "description":"Short Description"
    },
  ];


  Widget _getDashboardHeader()
  {
    return  Container(
      width: MediaQuery.of(context).size.width,
      color: AppConfig.splashBackgroundColor,
      height: 130,
      child: Padding(padding: const EdgeInsets.only(top: 36.0,left: 16.0,right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Home Page",style: TextStyle(fontSize: 24.0,color: Colors.white),),
            SizedBox(height:8.0),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white)
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Search Doctor, Clinics ...",style: TextStyle(color: Colors.white),),
                    Spacer(),
                    InkWell(
                      onTap: (){

                      },
                      child: Icon(Icons.search,color: Colors.white,),
                    )
                  ],
                ),
              ),
            )
          ],
        ),),
    );
  }


  Widget _getDashboardBody()
  {
    return StaggeredGridView.countBuilder(crossAxisCount: 2,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        primary: true,
        itemCount: lstOptions.length,
        itemBuilder: (_,index){
           return InkWell(
             onTap: (){
               if(index==0)
                 {
                   Navigator.pushNamed(context,DoctorListScreen.TAG);
                 }
               else if(index==1)
                 {
                   Navigator.pushNamed(context,ClinicListScreen.TAG);
                 }

             },
             child: Padding(
              padding: const EdgeInsets.all(8.0),

                child: Container(
                  height: 125,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0,bottom: 16.0),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage(lstOptions[index]["icon"])),
                        Spacer(),
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(lstOptions[index]["title"],style: TextStyle(color: Colors.black),),
                            Text(lstOptions[index]["description"],style: TextStyle(color: Colors.grey),)
                          ],
                        )
                      ],
                    ),
                  ),
              ),
          ),
           );
        },
        staggeredTileBuilder: (int index) => new StaggeredTile.fit(1));

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
          children: [
            _getDashboardHeader(),
            Column(
              children: [
                SizedBox(height: 130,),
                Expanded(child: _getDashboardBody()),

              ],
            )
          ],
        ),
    );
  }
}