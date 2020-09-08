import 'package:auditions/config/colors.dart';
import 'package:flutter/material.dart';

class Activityfeed extends StatefulWidget {
  @override
  _ActivityfeedState createState() => _ActivityfeedState();
}

class _ActivityfeedState extends State<Activityfeed> {
  @override
  Widget build(BuildContext context) {
     var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      color: Mycolors.textfieldcolor,
      padding: EdgeInsets.symmetric(horizontal:20 ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height/60,),
            Container(
              width: width,
              height: height/3.1,
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/cute.png',height: 60,),
                      SizedBox(width: width/15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Alex Embree",
                                    style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                          Text("18 yrs old Reno, NV",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),),
                        ],
                      ),
                      Expanded(child: SizedBox()),
                       Text("47 seconds ago",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.blue),),
                    ],
                  ),
                  SizedBox(height: height/70,),

                  Image.asset("assets/Rectangle 170.png")
                ],
              ),
            ),

            SizedBox(height: height/60,),

            Container(
              width: width,
              height: height/2.5,
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
               
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/Ellipse 37.png',height: 60,),
                      SizedBox(width: width/15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Shea Hame",
                                    style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                          Text("18 yrs old Los Angeles, CA",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),),
                        ],
                      ),
                      Expanded(child: SizedBox()),
                       Text("1 day ago",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.blue),),
                    ],
                  ),
                  SizedBox(height: height/70,),
                  Text("Man in black Givenchy sweatshirt standing beside of post.",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                          Text("#Video #New Post #Like #outdoor #CommentsA",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.blue),),
                  SizedBox(height: height/70,),

                  Image.asset("assets/Group 471.png")
                ],
              ),
            ),

            SizedBox(height: height/60,),

            Container(
              width: width,
              height: height/4.5,
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
               
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/Ellipse 36.png',height: 60,),
                      SizedBox(width: width/15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ece Alkman",
                                    style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                          Text("18 yrs old Reno, NV",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),),
                        ],
                      ),
                      Expanded(child: SizedBox()),
                       Text("just Now",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.blue),),
                    ],
                  ),
                  SizedBox(height: height/70,),

                  Container(
                    width: width,
                    height: height/10,
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Mycolors.bordercolor
                      )
                    ),
                   // color: Colors.blue,
                    child: Stack(
                      children: [
                      Image.asset('assets/Rectangle 121.png',height: 110,),
                      Positioned(
                        left: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Toddler walking near river",
                                      style: TextStyle(fontSize: 15,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                            
                            Text("Man wearing black",
                                      style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1),),
                                      SizedBox(height: height/50,),
                            Container(
                              width: width/1.9,
                              height: height/100,
                              decoration: BoxDecoration(
                                color: Mycolors.textfieldcolor,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                children: [
                                  Container(
                                   width: width/5,
                                  height: height/100,
                                  decoration: BoxDecoration(
                                    color: Mycolors.blue,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 1.2,),
                            Row(
                              children: [
                               Text("00:20 mins",
                                      style: TextStyle(fontSize: 10,fontFamily: 'AvenirLTStd-Regular',color: Mycolors.textcolor1),),
                                      SizedBox(width: width/3.3,),
                            Text("10:20 mins",
                                      style: TextStyle(fontSize: 10,fontFamily: 'AvenirLTStd-Regular',color: Mycolors.textcolor1),), 
                              ],
                            )
                            
                          ],
                        ),
                      ),
                      Positioned(
                        right: 10,
                        child: Image.asset('assets/Group 87.png',height: 45,))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),

      
    );
  }
}