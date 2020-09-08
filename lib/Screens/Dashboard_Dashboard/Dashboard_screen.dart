import 'dart:ffi';

import 'package:auditions/Screens/verify_screen/verify.dart';
import 'package:auditions/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Dashboard_screen extends StatefulWidget {
  @override
  _Dashboard_screenState createState() => _Dashboard_screenState();
}

class _Dashboard_screenState extends State<Dashboard_screen> {
  String email="";
  TextEditingController _email=TextEditingController();
  var work=false;
  var talent=false;

  int seletced=-1;



  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    var designheight=2560;
    var designwidht=1440;

    return Scaffold(


      body: Container(

        width: width,
        height: height,
        color: Colors.white,

        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10,    (75/designheight)*height  , 10, 0),
              child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row (
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Card(
                              
                              shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              elevation: 1,

                              child: Container(
                                width: (632/designwidht)*width ,
                                height: (280/designheight)*height ,


                                child: Padding(
                                  padding:const EdgeInsets.fromLTRB(20,0,0,0),
                                  child: Row(

                                    children: [
                                      Image.asset("assets/dashboard/active_cd.png",scale: 3,),
                                   Padding(
                                     padding: const EdgeInsets.fromLTRB(10,0,0,0),
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       crossAxisAlignment: CrossAxisAlignment.start,

                                       children: [
                                         Text("250", style: TextStyle(fontSize: 25,fontFamily: 'Avenir LT Std',color: Mycolors.green),),
                                         Text("Active CD Invitations", style: TextStyle(fontSize: 14,fontFamily: 'Avenir LT Std',color: Colors.black54),),
                                       ],
                                     ),
                                   )

                                    ],
                                  ),
                                )
                              ),
                            ),
                            Card(
                              shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),

                              elevation: 1,


                              child: Container(

                                  width: (632/designwidht)*width ,
                                  height: (280/designheight)*height ,


                                  child: Padding(
                                    padding:const EdgeInsets.fromLTRB(20,0,0,0),
                                    child: Row(

                                      children: [
                                        Image.asset("assets/dashboard/newmessage.png",scale: 3,),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            children: [
                                              Text("10", style: TextStyle(fontSize: 25,fontFamily: 'Avenir LT Std',color: Colors.blue),),
                                              Text("New messages", style: TextStyle(fontSize: 14,fontFamily: 'Avenir LT Std',color: Colors.black54),),
                                            ],
                                          ),
                                        )

                                      ],
                                    ),
                                  )
                              ),
                            ),


                          ],
                        ),
                        Container(

                          child: Row (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Card(
                                shape:  RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                elevation: 1,

                                child: Container(
                                    width: (632/designwidht)*width ,
                                    height: (280/designheight)*height ,


                                    child: Padding(
                                      padding:const EdgeInsets.fromLTRB(20,0,0,0),
                                      child: Row(

                                        children: [
                                          Image.asset("assets/dashboard/pending.png",scale: 3,),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(10,0,0,0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,

                                              children: [
                                                Text("250", style: TextStyle(fontSize: 25,fontFamily: 'Avenir LT Std',color: Mycolors.orange),),
                                                Text("Active CD Invitations", style: TextStyle(fontSize: 14,fontFamily: 'Avenir LT Std',color: Colors.black54),),
                                              ],
                                            ),
                                          )

                                        ],
                                      ),
                                    )
                                ),
                              ),
                              Card(
                                shape:  RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                elevation: 1,

                                child: Container(
                                    width: (632/designwidht)*width ,
                                    height: (280/designheight)*height ,


                                    child: Padding(
                                      padding:const EdgeInsets.fromLTRB(20,0,0,0),
                                      child: Row(

                                        children: [
                                          Image.asset("assets/dashboard/matched_audions.png",scale: 3,),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(10,0,0,0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,

                                              children: [
                                                Text("10", style: TextStyle(fontSize: 25,fontFamily: 'Avenir LT Std',color: Mycolors.red),),
                                                Text("New messages", style: TextStyle(fontSize: 14,fontFamily: 'Avenir LT Std',color: Colors.black54),),
                                              ],
                                            ),
                                          )

                                        ],
                                      ),
                                    )
                                ),
                              ),


                            ],
                          ),
                        ),



                        Container(

                          margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                          child: Column(

                              children: [




                             ///item 1
                                seletced!=0? InkWell(

                                  onTap: (){

                                    setState(() {

                                      if(seletced==0){
                                        seletced=-1;
                                        setState(() {

                                        });
                                      }else{
                                        seletced=0;
                                      }
                                    });
                                    print("cllicked "+seletced.toString());
                                  },
                                  child: Container(

                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: Image.asset(seletced!=0?"assets/dashboard/list_01_notclicked.png":"assets/dashboard/list_01_clicked.png"),
                                  ),
                                ):Container(),
                                 seletced==0? Container(

                                      width: MediaQuery.of(context).size.width,
                                      height: 600,

                                      child: Stack(
                                          children: [

                                            Positioned(
                                              right: 0,
                                              left: 0,
                                              top: 120,
                                              bottom: 0,
                                              child: Card(

                                                shape:  RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(15.0),

                                                ),
                                                shadowColor: Mycolors.shadow,

                                                elevation: 1,
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          SizedBox(height: 30,),
                                                          Text("25%",
                                                            style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd',color: Mycolors.blue),),
                                                          Text(" Complete ",
                                                            style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd',color:Colors.black54),),
                                                        ],
                                                      ),
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(20),
                                                          color: Colors.black12.withAlpha(10),
                                                        ),
                                                        margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
                                                        width: MediaQuery.of(context).size.width,

                                                        height: 15,
                                                        child: Stack(
                                                          children: [
                                                            Container(
                                                              width: MediaQuery.of(context).size.width/4,
                                                              decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(20),
                                                                color: Mycolors.blue,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.fromLTRB(0,15.0,0,0),
                                                        child:
                                                        Text("Complete Your Profile", style: TextStyle(fontSize: 18,fontFamily: 'Avenir LT Std',color: Mycolors.green),),
                                                      ),
                                                      SizedBox(height: 50,),

                                                      Column(
                                                        children: [

                                                          InkWell(

                                                            splashColor: Mycolors.blue_selecttion,

                                                            highlightColor: Mycolors.blue_selecttion,
                                                            onTap: (){

                                                            },
                                                            child: Column(
                                                              children: [
                                                                SizedBox(height: 20,),
                                                                Row(
                                                                  children: [
                                                                    SizedBox(width: 40,height: 20,),
                                                                    Image.asset("assets/dashboard/profile_item.png",scale: 3.0,),
                                                                    SizedBox(width: 20,),
                                                                    Text("About Us", style: TextStyle(fontSize: 22,fontFamily: 'Avenir LT Std',color: Mycolors.darkgray),),


                                                                  ],
                                                                ),
                                                                SizedBox(height: 30,),
                                                                Container(
                                                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                                                  color: Colors.black12,
                                                                  height: 1,
                                                                )
                                                              ],
                                                            ),
                                                          ),

                                                          InkWell(
                                                            splashColor: Mycolors.blue_selecttion,

                                                            highlightColor: Mycolors.blue_selecttion,
                                                            onTap: (){

                                                            },
                                                            child: Column(
                                                              children: [
                                                                SizedBox(height: 20,),
                                                                Row(
                                                                  children: [
                                                                    SizedBox(width: 40,height: 20,),
                                                                    Image.asset("assets/dashboard/special_skills_item.png",scale: 3.0,),
                                                                    SizedBox(width: 20,),
                                                                    Text("Special Skills", style: TextStyle(fontSize: 22,fontFamily: 'Avenir LT Std',color: Mycolors.darkgray),),


                                                                  ],
                                                                ),
                                                                SizedBox(height: 30,),
                                                                Container(
                                                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                                                  color: Colors.black12,
                                                                  height: 1,
                                                                )
                                                              ],
                                                            ),
                                                          ),



                                                          InkWell(
                                                            splashColor: Mycolors.blue_selecttion,

                                                            highlightColor: Mycolors.blue_selecttion,
                                                            onTap: (){

                                                            },
                                                            child: Column(
                                                              children: [
                                                                SizedBox(height: 20,),

                                                                Row(
                                                                  children: [
                                                                    SizedBox(width: 40,height: 20,),
                                                                    Image.asset("assets/dashboard/training_item.png",scale: 3.0,),
                                                                    SizedBox(width: 20,),
                                                                    Text("Education & Training", style: TextStyle(fontSize: 22,fontFamily: 'Avenir LT Std',color: Mycolors.darkgray),),


                                                                  ],
                                                                ),
                                                                SizedBox(height: 30,),
                                                                Container(
                                                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                                                  color: Colors.black12,
                                                                  height: 1,
                                                                )
                                                              ],
                                                            ),
                                                          ),

                                                          InkWell(
                                                            splashColor: Mycolors.blue_selecttion,

                                                            highlightColor: Mycolors.blue_selecttion,
                                                            onTap: (){

                                                            },
                                                            child: Column(
                                                              children: [
                                                                SizedBox(height: 20,),
                                                                Row(
                                                                  children: [
                                                                    SizedBox(width: 40,height: 20,),
                                                                    Image.asset("assets/dashboard/skills_item.png",scale: 3,),
                                                                    SizedBox(width: 20,),
                                                                    Text("Skills", style: TextStyle(fontSize: 22,fontFamily: 'Avenir LT Std',color: Mycolors.darkgray),),


                                                                  ],
                                                                ),
                                                                SizedBox(height: 30,),
                                                                Container(
                                                                  margin: EdgeInsets.symmetric(horizontal: 20),



                                                                  height: 1,
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      )

                                                    ],

                                                  ),

                                                ),
                                              ),
                                            ),

                                            InkWell(

                                              onTap: (){

                                                setState(() {

                                                  if(seletced==0){
                                                    seletced=-1;
                                                    setState(() {

                                                    });
                                                  }else{
                                                    seletced=0;
                                                  }
                                                });
                                                print("cllicked "+seletced.toString());
                                              },
                                              child: Container(

                                                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                                child: Image.asset(seletced!=0?"assets/dashboard/list_01_notclicked.png":"assets/dashboard/list_01_clicked.png",scale:1,),
                                              ),
                                            ),



                                          ],
                                      ),
                                    ):Container(
                                  height: 0,
                                  color: Colors.teal,
                                ),

//item 2
                                seletced!=1? InkWell(

                                  onTap: (){

                                    setState(() {

                                      if(seletced==1){
                                        seletced=-1;
                                        setState(() {

                                        });
                                      }else{
                                        seletced=1;
                                      }
                                    });
                                    print("cllicked "+seletced.toString());
                                  },
                                  child: Container(

                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: Image.asset(seletced!=1?"assets/dashboard/list_02_notclicked.png":"assets/dashboard/list_02_clicked.png"),
                                  ),
                                ):Container(),
                                seletced==1? Container(

                                  width: MediaQuery.of(context).size.width,
                                  height: 450,

                                  child: Stack(
                                    children: [

                                      Positioned(
                                        right: 0,
                                        left: 0,
                                        top: 120,
                                        bottom: 0,
                                        child: Card(

                                          shape:  RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15.0),

                                          ),
                                          shadowColor: Mycolors.shadow,

                                          elevation: 1,
                                          child: Container(
                                            child: Column(
                                              children: [

                                             
                                                SizedBox(height: 50,),

                                                Column(
                                                  children: [

                                                    InkWell(

                                                      splashColor: Mycolors.blue_selecttion,

                                                      highlightColor: Mycolors.blue_selecttion,
                                                      onTap: (){

                                                      },
                                                      child: Column(
                                                        children: [
                                                          SizedBox(height: 20,),
                                                          Row(
                                                            children: [
                                                              SizedBox(width: 40,height: 20,),
                                                              Image.asset("assets/dashboard/photos_item.png",scale: 3.0,),
                                                              SizedBox(width: 20,),
                                                              Text("Photos", style: TextStyle(fontSize: 22,fontFamily: 'Avenir LT Std',color: Mycolors.darkgray),),


                                                            ],
                                                          ),
                                                          SizedBox(height: 30,),
                                                          Container(
                                                            margin: EdgeInsets.symmetric(horizontal: 20),
                                                            color: Colors.black12,
                                                            height: 1,
                                                          )
                                                        ],
                                                      ),
                                                    ),

                                                    InkWell(
                                                      splashColor: Mycolors.blue_selecttion,

                                                      highlightColor: Mycolors.blue_selecttion,
                                                      onTap: (){

                                                      },
                                                      child: Column(
                                                        children: [
                                                          SizedBox(height: 20,),
                                                          Row(
                                                            children: [
                                                              SizedBox(width: 40,height: 20,),
                                                              Image.asset("assets/dashboard/videos_item.png",scale: 3.0,),
                                                              SizedBox(width: 20,),
                                                              Text("Videos", style: TextStyle(fontSize: 22,fontFamily: 'Avenir LT Std',color: Mycolors.darkgray),),


                                                            ],
                                                          ),
                                                          SizedBox(height: 30,),
                                                          Container(
                                                            margin: EdgeInsets.symmetric(horizontal: 20),
                                                            color: Colors.black12,
                                                            height: 1,
                                                          )
                                                        ],
                                                      ),
                                                    ),



                                                    InkWell(
                                                      splashColor: Mycolors.blue_selecttion,

                                                      highlightColor: Mycolors.blue_selecttion,
                                                      onTap: (){

                                                      },
                                                      child: Column(
                                                        children: [
                                                          SizedBox(height: 20,),

                                                          Row(
                                                            children: [
                                                              SizedBox(width: 40,height: 20,),
                                                              Image.asset("assets/dashboard/audios_item.png",scale: 3.0,),
                                                              SizedBox(width: 20,),
                                                              Text("Audios", style: TextStyle(fontSize: 22,fontFamily: 'Avenir LT Std',color: Mycolors.darkgray),),


                                                            ],
                                                          ),
                                                          SizedBox(height: 30,),
                                                          Container(
                                                            margin: EdgeInsets.symmetric(horizontal: 20),
                                                            height: 1,
                                                          )
                                                        ],
                                                      ),
                                                    ),


                                                  ],
                                                )

                                              ],

                                            ),

                                          ),
                                        ),
                                      ),

                                      InkWell(

                                        onTap: (){

                                          setState(() {

                                            if(seletced==1){
                                              seletced=-1;
                                              setState(() {

                                              });
                                            }else{
                                              seletced=1;
                                            }
                                          });
                                          print("cllicked "+seletced.toString());
                                        },
                                        child: Container(

                                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                          child: Image.asset(seletced!=1?"assets/dashboard/list_02_notclicked.png":"assets/dashboard/list_02_clicked.png",scale:1,),
                                        ),
                                      ),



                                    ],
                                  ),
                                ):Container(
                                  height: 0,
                                  color: Colors.teal,
                                ),

////item 3
                                seletced!=2? InkWell(

                                  onTap: (){

                                    setState(() {

                                      if(seletced==2){
                                        seletced=-1;
                                        setState(() {

                                        });
                                      }else{
                                        seletced=2;
                                      }
                                    });
                                    print("cllicked "+seletced.toString());
                                  },
                                  child: Container(

                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: Image.asset(seletced!=2?"assets/dashboard/list_03_notclicked.png":"assets/dashboard/list_03_clicked.png"),
                                  ),
                                ):Container(),
                                seletced==2? Container(

                                  width: MediaQuery.of(context).size.width,
                                  height: 800,

                                  child: Stack(
                                    children: [

                                      Positioned(
                                        right: 0,
                                        left: 0,
                                        top: 110,
                                        bottom: 0,
                                        child: Card(

                                          shape:  RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15.0),

                                          ),
                                          shadowColor: Mycolors.shadow,

                                          elevation: 1,
                                          child: Container(
                                            child: Column(
                                              children: [


                                                SizedBox(height: 50,),

                                                Column(
                                                  children: [

                                                  Container(

                                                    margin: EdgeInsets.symmetric(horizontal: 10),
                                                    
                                                    decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),

                                                      color:new Color(0XFFF9FCFF),
                                                        border: Border.all(color: new Color(0XFFEBF5FF))

                                                    ),

                                                    child: Stack(
                                                      children: [
                                                        Row(

                                                          children: [
                                                            Image.asset("assets/dashboard/ad_matched_camera.png",scale: 2.5,),
                                                            Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                SizedBox(height: 10,),
                                                                Row(
                                                                  children: [
                                                                    Text("INDY Film- Easy Roles", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black87),),
                                                                  ],
                                                                ),
                                                                SizedBox(height: 10,),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                  children: [
                                                                    Image.asset("assets/dashboard/ad_matched_location.png",scale: 2.5,),
                                                                    SizedBox(width: 10,),
                                                                    Text("INDY Film- Easy Roles", style: TextStyle(fontSize: 15,fontFamily: 'Avenir LT Std',color: Colors.blue),),
                                                                    SizedBox(width: 20,),
                                                                    Image.asset("assets/dashboard/ad_matched_date.png",scale: 2.5,),
                                                                    SizedBox(width: 10,),
                                                                    Text("11-30-2014", style: TextStyle(fontSize: 15,fontFamily: 'Avenir LT Std',color: Mycolors.red),),




                                                                  ],
                                                                ),
                                                                SizedBox(height: 20,),
                                                                Text("Category :- ", style: TextStyle(fontSize: 15,fontFamily: 'Avenir LT Std',color: Colors.black87),),
                                                                SizedBox(height: 5,),
                                                                Text("Feature Film - Non-SAG", style: TextStyle(fontSize: 18,fontFamily: 'Avenir LT Std',color: Mycolors.blue),),
                                                                SizedBox(height: 5,),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Positioned(
                                                          
                                                          child: Image.asset("assets/dashboard/ad_matched_star_select.png",scale: 2.7,),
                                                          right: 10,
                                                         top: 10,
                                                        )
                                                      ],
                                                    ),
                                                  )


                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Column(
                                                  children: [

                                                    Container(

                                                      margin: EdgeInsets.symmetric(horizontal: 10),

                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(10),

                                                          color:new Color(0XFFF9FCFF),
                                                          border: Border.all(color: new Color(0XFFEBF5FF))

                                                      ),

                                                      child: Stack(
                                                        children: [
                                                          Row(

                                                            children: [
                                                              Image.asset("assets/dashboard/ad_matched_camera.png",scale: 2.5,),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  SizedBox(height: 10,),
                                                                  Row(
                                                                    children: [
                                                                      Text("INDY Film- Easy Roles", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black87),),
                                                                    ],
                                                                  ),
                                                                  SizedBox(height: 10,),
                                                                  Row(
                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                    children: [
                                                                      Image.asset("assets/dashboard/ad_matched_location.png",scale: 2.5,),
                                                                      SizedBox(width: 10,),
                                                                      Text("INDY Film- Easy Roles", style: TextStyle(fontSize: 15,fontFamily: 'Avenir LT Std',color: Colors.blue),),
                                                                      SizedBox(width: 20,),
                                                                      Image.asset("assets/dashboard/ad_matched_date.png",scale: 2.5,),
                                                                      SizedBox(width: 10,),
                                                                      Text("11-30-2014", style: TextStyle(fontSize: 15,fontFamily: 'Avenir LT Std',color: Mycolors.red),),




                                                                    ],
                                                                  ),
                                                                  SizedBox(height: 20,),
                                                                  Text("Category :- ", style: TextStyle(fontSize: 15,fontFamily: 'Avenir LT Std',color: Colors.black87),),
                                                                  SizedBox(height: 5,),
                                                                  Text("Feature Film - Non-SAG", style: TextStyle(fontSize: 18,fontFamily: 'Avenir LT Std',color: Mycolors.blue),),
                                                                  SizedBox(height: 5,),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Positioned(

                                                            child: Image.asset("assets/dashboard/ad_matched_star_select.png",scale: 2.7,),
                                                            right: 10,
                                                            top: 10,
                                                          )
                                                        ],
                                                      ),
                                                    )


                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Column(
                                                  children: [

                                                    Container(

                                                      margin: EdgeInsets.symmetric(horizontal: 10),

                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(10),

                                                          color:new Color(0XFFF9FCFF),
                                                          border: Border.all(color: new Color(0XFFEBF5FF))

                                                      ),

                                                      child: Stack(
                                                        children: [
                                                          Row(

                                                            children: [
                                                              Image.asset("assets/dashboard/ad_matched_camera.png",scale: 2.5,),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  SizedBox(height: 10,),
                                                                  Row(
                                                                    children: [
                                                                      Text("INDY Film- Easy Roles", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black87),),
                                                                    ],
                                                                  ),
                                                                  SizedBox(height: 10,),
                                                                  Row(
                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                    children: [
                                                                      Image.asset("assets/dashboard/ad_matched_location.png",scale: 2.5,),
                                                                      SizedBox(width: 10,),
                                                                      Text("INDY Film- Easy Roles", style: TextStyle(fontSize: 15,fontFamily: 'Avenir LT Std',color: Colors.blue),),
                                                                      SizedBox(width: 20,),
                                                                      Image.asset("assets/dashboard/ad_matched_date.png",scale: 2.5,),
                                                                      SizedBox(width: 10,),
                                                                      Text("11-30-2014", style: TextStyle(fontSize: 15,fontFamily: 'Avenir LT Std',color: Mycolors.red),),




                                                                    ],
                                                                  ),
                                                                  SizedBox(height: 20,),
                                                                  Text("Category :- ", style: TextStyle(fontSize: 15,fontFamily: 'Avenir LT Std',color: Colors.black87),),
                                                                  SizedBox(height: 5,),
                                                                  Text("Feature Film - Non-SAG", style: TextStyle(fontSize: 18,fontFamily: 'Avenir LT Std',color: Mycolors.blue),),
                                                                  SizedBox(height: 5,),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Positioned(

                                                            child: Image.asset("assets/dashboard/ad_matched_star_select.png",scale: 2.7,),
                                                            right: 10,
                                                            top: 10,
                                                          )
                                                        ],
                                                      ),
                                                    )


                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Column(
                                                  children: [

                                                    Container(

                                                      margin: EdgeInsets.symmetric(horizontal: 10),

                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(10),

                                                          color:new Color(0XFFF9FCFF),
                                                          border: Border.all(color: new Color(0XFFEBF5FF))

                                                      ),

                                                      child: Stack(
                                                        children: [
                                                          Row(

                                                            children: [
                                                              Image.asset("assets/dashboard/ad_matched_camera.png",scale: 2.5,),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  SizedBox(height: 10,),
                                                                  Row(
                                                                    children: [
                                                                      Text("INDY Film- Easy Roles", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black87),),
                                                                    ],
                                                                  ),
                                                                  SizedBox(height: 10,),
                                                                  Row(
                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                    children: [
                                                                      Image.asset("assets/dashboard/ad_matched_location.png",scale: 2.5,),
                                                                      SizedBox(width: 10,),
                                                                      Text("INDY Film- Easy Roles", style: TextStyle(fontSize: 15,fontFamily: 'Avenir LT Std',color: Colors.blue),),
                                                                      SizedBox(width: 20,),
                                                                      Image.asset("assets/dashboard/ad_matched_date.png",scale: 2.5,),
                                                                      SizedBox(width: 10,),
                                                                      Text("11-30-2014", style: TextStyle(fontSize: 15,fontFamily: 'Avenir LT Std',color: Mycolors.red),),




                                                                    ],
                                                                  ),
                                                                  SizedBox(height: 20,),
                                                                  Text("Category :- ", style: TextStyle(fontSize: 15,fontFamily: 'Avenir LT Std',color: Colors.black87),),
                                                                  SizedBox(height: 5,),
                                                                  Text("Feature Film - Non-SAG", style: TextStyle(fontSize: 18,fontFamily: 'Avenir LT Std',color: Mycolors.blue),),
                                                                  SizedBox(height: 5,),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Positioned(

                                                            child: Image.asset("assets/dashboard/ad_matched_star_select.png",scale: 2.7,),
                                                            right: 10,
                                                            top: 10,
                                                          )
                                                        ],
                                                      ),
                                                    )


                                                  ],
                                                )

                                              ],

                                            ),

                                          ),
                                        ),
                                      ),

                                      InkWell(

                                        onTap: (){

                                          setState(() {

                                            if(seletced==2){
                                              seletced=-1;
                                              setState(() {

                                              });
                                            }else{
                                              seletced=2;
                                            }
                                          });
                                          print("cllicked "+seletced.toString());
                                        },
                                        child: Container(

                                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                          child: Image.asset(seletced!=2?"assets/dashboard/list_03_notclicked.png":"assets/dashboard/list_03_clicked.png",scale:1,),
                                        ),
                                      ),



                                    ],
                                  ),
                                ):Container(
                                  height: 0,
                                  color: Colors.teal,
                                ),
///item 4
                                seletced!=3? InkWell(

                                  onTap: (){

                                    setState(() {

                                      if(seletced==3){
                                        seletced=-1;
                                        setState(() {

                                        });
                                      }else{
                                        seletced=3;
                                      }
                                    });
                                    print("cllicked "+seletced.toString());
                                  },
                                  child: Container(

                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: Image.asset(seletced!=3?"assets/dashboard/list_04_notclicked.png":"assets/dashboard/list_04_clicked.png"),
                                  ),
                                ):Container(),
                                seletced==3? Container(

                                  width: MediaQuery.of(context).size.width,
                                  height: 800,

                                  child: Stack(
                                    children: [

                                      Positioned(
                                        right: 0,
                                        left: 0,
                                        top: 110,
                                        bottom: 0,
                                        child: Card(

                                          shape:  RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15.0),

                                          ),
                                          shadowColor: Mycolors.shadow,

                                          elevation: 1,
                                          child: Container(
                                            child: Column(
                                              children: [


                                                SizedBox(height: 50,),
                                                
                                                ///here goes all code
                                                ///

                                                Column(
                                                  children: [

                                                    Container(

                                                      margin: EdgeInsets.symmetric(horizontal: 10),

                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(10),

                                                        

                                                      ),

                                                      child:   Column(

                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Row(

                                                            children: [
                                                              Image.asset("assets/dashboard/EV_email.png",scale: 2.5,),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  SizedBox(height: 10,),

                                                                  Text("Email Verification", style: TextStyle(fontSize: 24,fontFamily: 'Avenir LT Std',color: Colors.black),),
                                                                  SizedBox(height: 10,),
                                                                  Text("Resend Email", style: TextStyle(fontSize: 15,fontFamily: 'Avenir LT Std',color: Colors.blue),),
                                                                  SizedBox(height: 10,),



                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            margin:EdgeInsets.fromLTRB(55, 0, 0, 0),
                                                              
                                                              child: Image.asset("assets/dashboard/EV_blue_dots.png",scale: 2.5,)),
                                                     
                                                          Row(

                                                            children: [
                                                              Image.asset("assets/dashboard/EV_sms.png",scale: 2.5,),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  SizedBox(height: 10,),

                                                                  Text("SMS Verification", style: TextStyle(fontSize: 24,fontFamily: 'Avenir LT Std',color: Colors.black),),
                                                                  SizedBox(height: 10,),
                                                                  Text("Resend SMS", style: TextStyle(fontSize: 15,fontFamily: 'Avenir LT Std',color: Colors.blue),),
                                                                  SizedBox(height: 10,),


                                                                  SizedBox(height: 5,),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                              margin:EdgeInsets.fromLTRB(55, 0, 0, 10),

                                                              child: Image.asset("assets/dashboard/EV_white_dots.png",scale: 2.5,)),
                                                          Row(

                                                            children: [
                                                              SizedBox(width: 20 ,),
                                                              Image.asset("assets/dashboard/EV_camera.png",scale: 2.5,),
                                                              SizedBox(width: 30 ,),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  SizedBox(height: 10,),

                                                                  Text("Profile Greeting Video", style: TextStyle(fontSize: 24,fontFamily: 'Avenir LT Std',color: Colors.black38),),
                                                                  SizedBox(height: 10,width: 30 ,),

                                                                  SizedBox(height: 5,),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                              margin:EdgeInsets.fromLTRB(55, 10, 0, 10),

                                                              child: Image.asset("assets/dashboard/EV_white_dots.png",scale: 2.5,)),
                                                          Row(

                                                            children: [
                                                              SizedBox(width: 20 ,),
                                                              Image.asset("assets/dashboard/EV_webcam.png",scale: 2.5,),
                                                              SizedBox(width: 30 ,),
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  SizedBox(height: 10,),

                                                                  Text("Talent Screening Phone Call", style: TextStyle(fontSize: 24,fontFamily: 'Avenir LT Std',color: Colors.black38),),
                                                                  SizedBox(height: 10,width: 30 ,),

                                                                  SizedBox(height: 5,),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    )


                                                  ],
                                                ),


                                              ],

                                            ),

                                          ),
                                        ),
                                      ),

                                      InkWell(

                                        onTap: (){

                                          setState(() {

                                            if(seletced==3){
                                              seletced=-1;
                                              setState(() {

                                              });
                                            }else{
                                              seletced=3;
                                            }
                                          });
                                          print("cllicked "+seletced.toString());
                                        },
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                          child: Image.asset(seletced!=3?"assets/dashboard/list_04_notclicked.png":"assets/dashboard/list_04_clicked.png",scale:1,),
                                        ),
                                      ),



                                    ],
                                  ),
                                ):Container(
                                  height: 0,
                                  color: Colors.teal,
                                ),

/// 5

                                seletced!=4? InkWell(

                                  onTap: (){

                                    setState(() {

                                      if(seletced==4){
                                        seletced=-1;
                                        setState(() {

                                        });
                                      }else{
                                        seletced=4;
                                      }
                                    });
                                    print("cllicked "+seletced.toString());
                                  },
                                  child: Container(

                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: Image.asset(seletced!=4?"assets/dashboard/list_05_notclicked.png":"assets/dashboard/list_05_clicked.png"),
                                  ),
                                ):Container(),
                                seletced==4? Container(

                                  width: MediaQuery.of(context).size.width,
                                  height: 1000,

                                  child: Stack(
                                    children: [

                                      Positioned(
                                        right: 0,
                                        left: 0,
                                        top: 110,
                                        bottom: 0,
                                        child: Card(

                                          shape:  RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15.0),

                                          ),
                                          shadowColor: Mycolors.shadow,

                                          elevation: 1,
                                          child: Container(
                                            child: Column(
                                              children: [


                                                SizedBox(height: 50,),

                                                ///here goes all code
                                                ///

                                                Column(
                                                  children: [

                                                    Container(

                                                      margin: EdgeInsets.symmetric(horizontal: 10),

                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10),



                                                      ),

                                                      child:   Column(
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.all(5.0),
                                                            child: Column(

                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Row(

                                                                  children: [

                                                                    SizedBox(width:55),
                                                                    Container(
                                                                        width:300,
                                                                        child: Text("Lorem ipsum dolor sit amet ", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black),)),

                                                                  ],
                                                                ),
                                                                SizedBox(height:10),

                                                                Row(

                                                                  children: [
                                                                    Image.asset("assets/dashboard/message_send.png",scale: 2.5,),
                                                                    SizedBox(width:20),
                                                                    Container(
                                                                        width:300,
                                                                        child: Text("Auis nostrud exercitation ullamco laboris nisi ut ", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Mycolors.blue),)),

                                                                  ],
                                                                ),


                                                                SizedBox(height:30),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Row(

                                                                      children: [
                                                                        Image.asset("assets/dashboard/message_profile.png",scale: 2.5,),
                                                                        SizedBox(width:20),
                                                                        Container(

                                                                            child: Text("Lacey A. Hull", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black38),)),


                                                                      ],
                                                                    ),

                                                                    Row(

                                                                      children: [
                                                                        Image.asset("assets/dashboard/message_date.png",scale: 2.5,),
                                                                        SizedBox(width:20),
                                                                        Container(

                                                                            child: Text("02:29PM  19 Sep 2019", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black38),)),


                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(height:20),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Row(

                                                                      children: [
                                                                        Image.asset("assets/dashboard/message_profile.png",scale: 2.5,),
                                                                        SizedBox(width:20),
                                                                        Container(

                                                                            child: Text("Lacey A. Hull", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black38),)),


                                                                      ],
                                                                    ),

                                                                    Row(

                                                                      children: [
                                                                        Image.asset("assets/dashboard/message_date.png",scale: 2.5,),
                                                                        SizedBox(width:20),
                                                                        Container(

                                                                            child: Text("02:29PM  19 Sep 2019", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black38),)),


                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),

                                                                SizedBox(height:20),

                                                                Container(
                                                                  color: Colors.black38.withAlpha(30),
                                                                  height: 1,
                                                                )



                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.all(5.0),
                                                            child: Column(

                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Row(

                                                                  children: [

                                                                    SizedBox(width:55),
                                                                    Container(
                                                                        width:300,
                                                                        child: Text("Lorem ipsum dolor sit amet ", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black),)),

                                                                  ],
                                                                ),
                                                                SizedBox(height:10),

                                                                Row(

                                                                  children: [
                                                                    Image.asset("assets/dashboard/message_send.png",scale: 2.5,),
                                                                    SizedBox(width:20),
                                                                    Container(
                                                                        width:300,
                                                                        child: Text("Auis nostrud exercitation ullamco laboris nisi ut ", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Mycolors.blue),)),

                                                                  ],
                                                                ),


                                                                SizedBox(height:30),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Row(

                                                                      children: [
                                                                        Image.asset("assets/dashboard/message_profile.png",scale: 2.5,),
                                                                        SizedBox(width:20),
                                                                        Container(

                                                                            child: Text("Lacey A. Hull", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black38),)),


                                                                      ],
                                                                    ),

                                                                    Row(

                                                                      children: [
                                                                        Image.asset("assets/dashboard/message_date.png",scale: 2.5,),
                                                                        SizedBox(width:20),
                                                                        Container(

                                                                            child: Text("02:29PM  19 Sep 2019", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black38),)),


                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(height:20),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Row(

                                                                      children: [
                                                                        Image.asset("assets/dashboard/message_profile.png",scale: 2.5,),
                                                                        SizedBox(width:20),
                                                                        Container(

                                                                            child: Text("Lacey A. Hull", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black38),)),


                                                                      ],
                                                                    ),

                                                                    Row(

                                                                      children: [
                                                                        Image.asset("assets/dashboard/message_date.png",scale: 2.5,),
                                                                        SizedBox(width:20),
                                                                        Container(

                                                                            child: Text("02:29PM  19 Sep 2019", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black38),)),


                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),

                                                                SizedBox(height:20),

                                                                Container(
                                                                  color: Colors.black38.withAlpha(30),
                                                                  height: 1,
                                                                )



                                                              ],
                                                            ),
                                                          ),Padding(
                                                            padding: const EdgeInsets.all(5.0),
                                                            child: Column(

                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Row(

                                                                  children: [

                                                                    SizedBox(width:55),
                                                                    Container(
                                                                        width:300,
                                                                        child: Text("Lorem ipsum dolor sit amet ", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black),)),

                                                                  ],
                                                                ),
                                                                SizedBox(height:10),

                                                                Row(

                                                                  children: [
                                                                    Image.asset("assets/dashboard/message_send.png",scale: 2.5,),
                                                                    SizedBox(width:20),
                                                                    Container(
                                                                        width:300,
                                                                        child: Text("Auis nostrud exercitation ullamco laboris nisi ut ", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Mycolors.blue),)),

                                                                  ],
                                                                ),


                                                                SizedBox(height:30),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Row(

                                                                      children: [
                                                                        Image.asset("assets/dashboard/message_profile.png",scale: 2.5,),
                                                                        SizedBox(width:20),
                                                                        Container(

                                                                            child: Text("Lacey A. Hull", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black38),)),


                                                                      ],
                                                                    ),

                                                                    Row(

                                                                      children: [
                                                                        Image.asset("assets/dashboard/message_date.png",scale: 2.5,),
                                                                        SizedBox(width:20),
                                                                        Container(

                                                                            child: Text("02:29PM  19 Sep 2019", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black38),)),


                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(height:20),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Row(

                                                                      children: [
                                                                        Image.asset("assets/dashboard/message_profile.png",scale: 2.5,),
                                                                        SizedBox(width:20),
                                                                        Container(

                                                                            child: Text("Lacey A. Hull", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black38),)),


                                                                      ],
                                                                    ),

                                                                    Row(

                                                                      children: [
                                                                        Image.asset("assets/dashboard/message_date.png",scale: 2.5,),
                                                                        SizedBox(width:20),
                                                                        Container(

                                                                            child: Text("02:29PM  19 Sep 2019", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black38),)),


                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),

                                                                SizedBox(height:20),

                                                                Container(
                                                                  color: Colors.black38.withAlpha(30),
                                                                  height: 1,
                                                                )



                                                              ],
                                                            ),
                                                          ),Padding(
                                                            padding: const EdgeInsets.all(5.0),
                                                            child: Column(

                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Row(

                                                                  children: [

                                                                    SizedBox(width:55),
                                                                    Container(
                                                                        width:300,
                                                                        child: Text("Lorem ipsum dolor sit amet ", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black),)),

                                                                  ],
                                                                ),
                                                                SizedBox(height:10),

                                                                Row(

                                                                  children: [
                                                                    Image.asset("assets/dashboard/message_send.png",scale: 2.5,),
                                                                    SizedBox(width:20),
                                                                    Container(
                                                                        width:300,
                                                                        child: Text("Auis nostrud exercitation ullamco laboris nisi ut ", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Mycolors.blue),)),

                                                                  ],
                                                                ),


                                                                SizedBox(height:30),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Row(

                                                                      children: [
                                                                        Image.asset("assets/dashboard/message_profile.png",scale: 2.5,),
                                                                        SizedBox(width:20),
                                                                        Container(

                                                                            child: Text("Lacey A. Hull", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black38),)),


                                                                      ],
                                                                    ),

                                                                    Row(

                                                                      children: [
                                                                        Image.asset("assets/dashboard/message_date.png",scale: 2.5,),
                                                                        SizedBox(width:20),
                                                                        Container(

                                                                            child: Text("02:29PM  19 Sep 2019", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black38),)),


                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(height:20),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Row(

                                                                      children: [
                                                                        Image.asset("assets/dashboard/message_profile.png",scale: 2.5,),
                                                                        SizedBox(width:20),
                                                                        Container(

                                                                            child: Text("Lacey A. Hull", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black38),)),


                                                                      ],
                                                                    ),

                                                                    Row(

                                                                      children: [
                                                                        Image.asset("assets/dashboard/message_date.png",scale: 2.5,),
                                                                        SizedBox(width:20),
                                                                        Container(

                                                                            child: Text("02:29PM  19 Sep 2019", style: TextStyle(fontSize: 20,fontFamily: 'Avenir LT Std',color: Colors.black38),)),


                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),

                                                                SizedBox(height:20),

                                                                Container(
                                                                  color: Colors.black38.withAlpha(30),
                                                                  height: 1,
                                                                )



                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    )


                                                  ],
                                                ),


                                              ],

                                            ),

                                          ),
                                        ),
                                      ),

                                      InkWell(

                                        onTap: (){

                                          setState(() {

                                            if(seletced==4){
                                              seletced=-1;
                                              setState(() {

                                              });
                                            }else{
                                              seletced=4;
                                            }
                                          });
                                          print("cllicked "+seletced.toString());
                                        },
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                          child: Image.asset(seletced!=4?"assets/dashboard/list_05_notclicked.png":"assets/dashboard/list_05_clicked.png",scale:1,),
                                        ),
                                      ),



                                    ],
                                  ),
                                ):Container(
                                  height: 0,
                                  color: Colors.teal,
                                ),

//                                InkWell(
//                                  onTap: (){
//
//                                    setState(() {
//
//                                      if(seletced==1){
//                                        seletced=-1;
//                                        setState(() {
//
//                                        });
//                                      }else{
//                                        seletced=1;
//                                      }
//                                    });
//                                    print("cllicked "+seletced.toString());
//                                  },
//                                  child: Container(
//                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
//                                    child: Image.asset(seletced!=1?"assets/dashboard/list_02_notclicked.png":"assets/dashboard/list_02_clicked.png"),
//                                  ),
//                                ),
//                                InkWell(
//                                  onTap: (){
//                                    print("cllicked");
//                                    setState(() {
//
//                                      if(seletced==2){
//                                        seletced=-1;
//                                      }else{
//                                        seletced=2;
//                                      }
//                                    });
//                                  },
//                                  child: Container(
//                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
//                                    child: Image.asset(seletced!=2?"assets/dashboard/list_03_notclicked.png":"assets/dashboard/list_03_clicked.png"),
//                                  ),
//                                ),
//                                InkWell(
//                                  onTap: (){
//                                    print("cllicked");
//                                    setState(() {
//
//                                      if(seletced==3){
//                                        seletced=-1;
//                                      }else{
//                                        seletced=3;
//                                      }
//                                    });
//                                  },
//                                  child: Container(
//                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
//                                    child: Image.asset(seletced!=3?"assets/dashboard/list_03_notclicked.png":"assets/dashboard/list_03_clicked.png"),
//                                  ),
//                                ),
//                                InkWell(
//                                  onTap: (){
//                                    print("cllicked");
//                                    setState(() {
//
//                                      if(seletced==4){
//                                        seletced=-1;
//                                      }else{
//                                        seletced=4;
//                                      }
//                                    });
//                                  },
//                                  child: Container(
//                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
//                                    child: Image.asset(seletced!=4?"assets/dashboard/list_04_notclicked.png":"assets/dashboard/list_04_clicked.png"),
//                                  ),
//                                ),
//                                InkWell(
//                                  onTap: (){
//                                    print("cllicked");
//                                    setState(() {
//
//                                      if(seletced==5){
//                                        seletced=-1;
//                                      }else{
//                                        seletced=5;
//                                      }
//                                    });
//                                  },
//                                  child: Container(
//                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
//                                    child: Image.asset(seletced!=5?"assets/dashboard/list_05_notclicked.png":"assets/dashboard/list_05_clicked.png"),
//                                  ),
//                                ),

                              ]
                          ),
                        )
                      ],
                    ),
                  ),
                ),

            )
          ],
        ),

      ),


    );
  }
}