import 'package:auditions/Screens/Messages_screen/pages/chat.dart';
import 'package:auditions/config/colors.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  
  @override
  Widget build(BuildContext context) {
        var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      color: Mycolors.white,
      //padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Caht()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                width: width,
                height: height/10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  border: Border.all(
                    color: Mycolors.bordercolor
                  )
                
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/Group 474.png',height: 60,),
                        SizedBox(width: width/40,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Alex Embree",
                                      style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                                      SizedBox(height: height/150,),
                            Text("Planniong helps make a party …...",
                                      style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),),
                             
                             
                          ],
                        ),
                        Expanded(child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("47 Mins ago",
                                      style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.blue),),
                                      SizedBox(height: height/90,),
                            Container(
                              width: width/20,
                              height: width/20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Mycolors.blue
                              ),
                              child: Center(
                                child:  Text("10",
                                      style: TextStyle(fontSize: 10,fontFamily: 'AvenirLTStd-Heavy',color: Colors.white),),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: height/90,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              width: width,
              height: height/10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: Mycolors.bordercolor
                )
              
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/Group 472.png',height: 60,),
                      SizedBox(width: width/40,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Denish Parks",
                                    style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                                    SizedBox(height: height/150,),
                          Row(
                            children: [
                              Image.asset('assets/check.png',height: 10,),
                              Text(" Planniong helps make a party …...",
                                        style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),),
                            ],
                          ),
                           
                           
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("just Now",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.blue),),
                                    SizedBox(height: height/90,),
                          Container(
                            width: width/20,
                            height: width/20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                            ),
                            child: Center(
                              child:  Text("10",
                                    style: TextStyle(fontSize: 10,fontFamily: 'AvenirLTStd-Heavy',color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: height/90,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 13,vertical: 15),
              width: width,
              height: height/10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: Mycolors.bordercolor
                )
              
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/Group 475.png',height: 60,),
                      SizedBox(width: width/40,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Jhon parker",
                                    style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                                    SizedBox(height: height/150,),
                          Row(
                            children: [
                              Image.asset('assets/check.png',height: 10,),
                              Text(" Planniong helps make a party …...",
                                        style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),),
                            ],
                          ),
                           
                           
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("2 days ago",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.blue),),
                                    SizedBox(height: height/90,),
                          Container(
                            width: width/20,
                            height: width/20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                            ),
                            child: Center(
                              child:  Text("10",
                                    style: TextStyle(fontSize: 10,fontFamily: 'AvenirLTStd-Heavy',color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(
              height: height/90,
            ),

            


            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              width: width,
              height: height/10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: Mycolors.bordercolor
                )
              
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/Group 474.png',height: 60,),
                      SizedBox(width: width/40,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Alex Embree",
                                    style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                                    SizedBox(height: height/150,),
                          Text("Planniong helps make a party …...",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),),
                           
                           
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("47 Mins ago",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.blue),),
                                    SizedBox(height: height/90,),
                          Container(
                            width: width/20,
                            height: width/20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Mycolors.blue
                            ),
                            child: Center(
                              child:  Text("10",
                                    style: TextStyle(fontSize: 10,fontFamily: 'AvenirLTStd-Heavy',color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: height/90,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              width: width,
              height: height/10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: Mycolors.bordercolor
                )
              
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/Group 472.png',height: 60,),
                      SizedBox(width: width/40,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Denish Parks",
                                    style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                                    SizedBox(height: height/150,),
                          Row(
                            children: [
                              Image.asset('assets/check.png',height: 10,),
                              Text(" Planniong helps make a party …...",
                                        style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),),
                            ],
                          ),
                           
                           
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("just Now",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.blue),),
                                    SizedBox(height: height/90,),
                          Container(
                            width: width/20,
                            height: width/20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                            ),
                            child: Center(
                              child:  Text("10",
                                    style: TextStyle(fontSize: 10,fontFamily: 'AvenirLTStd-Heavy',color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(
              height: height/90,
            ),

           Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              width: width,
              height: height/10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: Mycolors.bordercolor
                )
              
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/cute.png',height: 60,),
                      SizedBox(width: width/40,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Alex Embree",
                                    style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                                    SizedBox(height: height/150,),
                          Text("Planniong helps make a party …...",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),),
                           
                           
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("47 Mins ago",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.blue),),
                                    SizedBox(height: height/90,),
                          Container(
                            width: width/20,
                            height: width/20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Mycolors.blue
                            ),
                            child: Center(
                              child:  Text("10",
                                    style: TextStyle(fontSize: 10,fontFamily: 'AvenirLTStd-Heavy',color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: height/90,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              width: width,
              height: height/10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: Mycolors.bordercolor
                )
              
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/Ellipse 40.png',height: 60,),
                      SizedBox(width: width/40,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Denish Parks",
                                    style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                                    SizedBox(height: height/150,),
                          Row(
                            children: [
                              Image.asset('assets/check.png',height: 10,),
                              Text(" Planniong helps make a party …...",
                                        style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),),
                            ],
                          ),
                           
                           
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("just Now",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.blue),),
                                    SizedBox(height: height/90,),
                          Container(
                            width: width/20,
                            height: width/20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                            ),
                            child: Center(
                              child:  Text("10",
                                    style: TextStyle(fontSize: 10,fontFamily: 'AvenirLTStd-Heavy',color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: height/90,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              width: width,
              height: height/10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: Mycolors.bordercolor
                )
              
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/Ellipse 37.png',height: 60,),
                      SizedBox(width: width/40,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Jhon parker",
                                    style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                                    SizedBox(height: height/150,),
                          Row(
                            children: [
                              Image.asset('assets/check.png',height: 10,),
                              Text(" Planniong helps make a party …...",
                                        style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),),
                            ],
                          ),
                           
                           
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("2 days ago",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.blue),),
                                    SizedBox(height: height/90,),
                          Container(
                            width: width/20,
                            height: width/20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                            ),
                            child: Center(
                              child:  Text("10",
                                    style: TextStyle(fontSize: 10,fontFamily: 'AvenirLTStd-Heavy',color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(
              height: height/90,
            ),

            

SizedBox(
              height: height/90,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              width: width,
              height: height/10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: Mycolors.bordercolor
                )
              
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/cute.png',height: 60,),
                      SizedBox(width: width/40,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Alex Embree",
                                    style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                                    SizedBox(height: height/150,),
                          Text("Planniong helps make a party …...",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),),
                           
                           
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("47 Mins ago",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.blue),),
                                    SizedBox(height: height/90,),
                          Container(
                            width: width/20,
                            height: width/20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Mycolors.blue
                            ),
                            child: Center(
                              child:  Text("10",
                                    style: TextStyle(fontSize: 10,fontFamily: 'AvenirLTStd-Heavy',color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: height/90,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              width: width,
              height: height/10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: Mycolors.bordercolor
                )
              
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/Ellipse 40.png',height: 60,),
                      SizedBox(width: width/40,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Denish Parks",
                                    style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                                    SizedBox(height: height/150,),
                          Row(
                            children: [
                              Image.asset('assets/check.png',height: 10,),
                              Text(" Planniong helps make a party …...",
                                        style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),),
                            ],
                          ),
                           
                           
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("just Now",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.blue),),
                                    SizedBox(height: height/90,),
                          Container(
                            width: width/20,
                            height: width/20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                            ),
                            child: Center(
                              child:  Text("10",
                                    style: TextStyle(fontSize: 10,fontFamily: 'AvenirLTStd-Heavy',color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(
              height: height/90,
            ),

           
          ],
        ),
      ),
      
    );
  }
}