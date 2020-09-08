import 'dart:ffi';

import 'package:auditions/Screens/signup_screen/personal_details.dart';
import 'package:auditions/Screens/verify_screen/verify.dart';
import 'package:auditions/config/colors.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email="";
  TextEditingController _email=TextEditingController();
  var work=false;
  var talent=false;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
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
            Text("Sign up to find ",
                    style: TextStyle(fontSize: 30,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                    SizedBox(height: height/70,),
             Text('Select your gender to continue...',style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),

            SizedBox(height: height/20,),

            InkWell(
              onTap: (){
                setState(() {
                  work=true;
                  talent=false;
                });
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                elevation:work?20: 2,
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: width,
                  height: height/4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color:work?Mycolors.blue: Colors.white
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: width/9,
                          height: width/9,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:work?Mycolors.textcolor.withOpacity(0.2): Mycolors.textfieldcolor
                          ),
                          child: work?Icon(Icons.check,color: Colors.white,):Container(),
                        ),
                      ),
                      Align(
                        alignment:Alignment.center ,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/chair.png',height: 100,),
                            SizedBox(height: height/70,),
               Text('Find Work',style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color:work?Colors.white: Mycolors.textcolor1),),

                          ],
                        ),
                        )
                    ],
                  ),
                ),
              ),
            ),
            

            SizedBox(height: height/20,),

            InkWell(
              onTap: (){
                setState(() {
                  work=false;
                  talent=true;
                });
              },
              child: Card(
                elevation:talent?20: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: width,
                  height: height/4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color:talent?Mycolors.blue: Colors.white
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: width/9,
                          height: width/9,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:talent?Mycolors.textcolor.withOpacity(0.2): Mycolors.textfieldcolor
                          ),
                          child: talent?Icon(Icons.check,color: Colors.white,):Container(),
                        ),
                      ),
                      Align(
                        alignment:Alignment.center ,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/team.png',height: 100,),
                            SizedBox(height: height/70,),
               Text('Find Talent',style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color:talent?Colors.white: Mycolors.textcolor1),),

                          ],
                        ),
                        )
                    ],
                  ),
                ),
              ),
            ),
            
                      Expanded(child: SizedBox()),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalDetails()));

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
          ],
        ),
      ),
      
    );
  }
}