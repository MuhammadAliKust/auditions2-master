import 'dart:ffi';

import 'package:auditions/Screens/signup_screen/pages/Contact_detail.dart';
import 'package:auditions/Screens/signup_screen/pages/Q_A.dart';
import 'package:auditions/Screens/signup_screen/pages/Residance_info_page.dart';
import 'package:auditions/Screens/signup_screen/pages/dirth_date_page.dart';
import 'package:auditions/Screens/signup_screen/pages/gender_page.dart';
import 'package:auditions/Screens/signup_screen/pages/name_page.dart';
import 'package:auditions/Screens/signup_screen/pages/privacy_page.dart';
import 'package:auditions/Screens/verify_screen/verify.dart';
import 'package:auditions/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PersonalDetails extends StatefulWidget {
  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {

 PageController controller=PageController();
 var page_index=1;
 void pagechage(index){
   setState(() {
      page_index=index+1;
      print("pagestart:$page_index");
    controller.animateToPage(index, duration: Duration(milliseconds: 400), curve: Curves.linear);
      
    });
 }
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
          width: width,
          height: height,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height/25,),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  width: width/9,
                  height:  width/9,
                  decoration: BoxDecoration(
                    color: Mycolors.blue,
                    shape: BoxShape.circle
                  ),
                  child: Center(child: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,), onPressed: null)),
                ),
              ),
              SizedBox(height: height/20,),
              Container(
                width: width,
                height: height/1.35,
               // color: Colors.red,
                child: PageView(
                  controller: controller,
                  children: [
                    Name(),
                    Contactdetails(),
                    Questions(),
                    Residance(),
                    Gender(),
                    Datebirth(),
                    Privacy()
                  ],
                ),
              ),
               Expanded(child: SizedBox()),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: InkWell(
                          onTap: (){
                             // Navigator.push(context, MaterialPageRoute(builder: (context)=>Verify()));
                          pagechage(page_index);
                          },
                          child: Container(
                                width: width/1.15,
                                height: height/13,
                                decoration: BoxDecoration(
                                  color: Mycolors.blue,
                                  borderRadius: BorderRadius.circular(40)
                                ),
                                child: Center(
                                  child:
                              Text('Continue',style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Colors.white,),
                                   
                                ),
                              )

                              ),
                        ),
                      ),
              SizedBox(height: height/60,),
                      Center(
                        child: SmoothPageIndicator(
                   controller: controller,
                    count: 7,
                    effect: ExpandingDotsEffect(
                      expansionFactor: 2,
                        spacing: 4.0,
                        radius: 20,
                        dotHeight: 8,
                        dotWidth: 8,
                        dotColor: Mycolors.textfieldcolor,
                        activeDotColor: Mycolors.blue
                    ),),
                      ),
            ],
          ),
        ),
      ),
      
      
    );
  }
}