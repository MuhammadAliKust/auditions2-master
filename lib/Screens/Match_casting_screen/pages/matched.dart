import 'package:auditions/config/colors.dart';
import 'package:flutter/material.dart';

class Matched extends StatefulWidget {
  @override
  _MatchedState createState() => _MatchedState();
}

class _MatchedState extends State<Matched> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      child: SingleChildScrollView(
        child: Column(
          children: [
             RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "We match castings based on your profile details & casting preferences ",
                    style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1) ),
                     TextSpan(text: ' Update your casting preferences',
                    style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.blue,decoration: TextDecoration.underline,) ),
                    

                  ]
                )),
            
            SizedBox(height: height/50,),
            Container(
              width: width,
              height: height/2.4,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Mycolors.textfieldcolor,
                border: Border.all(
                  color: Colors.green
                )
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$2,190 Feature Film Malaysia",
                                  style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.blue),),
                      Icon(Icons.star,color: Colors.yellow,size: 30,)
                    ],
                  ),

            SizedBox(height: height/70,),
                Row(
                    
                    children: [
                      Image.asset('assets/Path 26.png',height: 20,),
                      SizedBox(width: 10,),
                      Text("Nationwide",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Colors.blue),),
                      SizedBox(width: 20,),
                      Image.asset('assets/Path 27.png',height: 18,),
                      SizedBox(width: 10,),
                      Text("11-30-2014",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Colors.red),),
                      
                    ],
                  ),

                   SizedBox(height: height/70,),
                Row(
                    
                    children: [
                      Container(
                        width: width/4,
                        height: height/23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Mycolors.textcolor1
                          )
                          
                        ),
                        child: Center(
                          child: Text("Trade Shows",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: width/4,
                        height: height/23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Mycolors.textcolor1
                          )
                          
                        ),
                        child: Center(
                          child: Text("Live Events",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                        ),
                      )
                      ,

                       SizedBox(width: 10,),
                      Container(
                        width: width/4,
                        height: height/23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Mycolors.textcolor1
                          )
                          
                        ),
                        child: Center(
                          child: Text("Promo Model",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                        ),
                      )
                      
                    ],
                  ),
                  SizedBox(height: height/70,),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Matched Role",
                                  style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                      InkWell(
                        onTap: (){
                          showDialog(
                            context: context,
                            builder: (BuildContext context){
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                  width: width,
                                  height: height,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,

                                  ) ,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                         SizedBox(height: height/70,),

                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Expanded(child: SizedBox()),
                                             Text("Details",
                                    style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                                             Expanded(child: SizedBox()),
                                    Icon(Icons.close,size: 30,)
                                           ],
                                         ),
                                         SizedBox(height: height/50,),
                                         Container(
                                           width: width,
                                           height: 1,
                                           color: Mycolors.bordercolor,
                                         ),

                                         SizedBox(height: height/60,),
                                         Padding(
                                           padding: EdgeInsets.symmetric(horizontal: 10),
                                                                  child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("\$2,190 Feature Film Malaysia",
                                                            style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.blue),),
                                                Icon(Icons.star_border,color: Colors.yellow,size: 30,)
                                              ],
                                            ),
                                         ),

                                         SizedBox(height: height/60,),
                                         Padding(
                                           padding: EdgeInsets.symmetric(horizontal: 10),
                                                                  child: Row(
                                              
                                              children: [
                                                Text("Release Date:- ",
                                                            style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor1),),
                                                Text("Dec 3, 2019",
                                                            style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                                                
                                              ],
                                            ),
                                         ),
                                         SizedBox(height: height/60,),

                                          Row(
                    
                                        children: [
                                          Image.asset('assets/Path 26.png',height: 20,),
                                          SizedBox(width: 10,),
                                          Text("Washington DC, Los Angeles CA, EL Paso TX, \nLas Vegas NV",
                                                      style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Medium',color: Colors.blue),),
                                        
                                          
                                        ],
                                      ),
                                      SizedBox(height: height/60,),

                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: [
                      Container(
                        width: width/5,
                        height: height/23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Mycolors.textcolor1
                          )
                          
                        ),
                        child: Center(
                          child: Text("Trade Shows",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: width/5,
                        height: height/23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Mycolors.textcolor1
                          )
                          
                        ),
                        child: Center(
                          child: Text("Live Events",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                        ),
                      )
                      ,

                       SizedBox(width: 10,),
                      Container(
                        width: width/4,
                        height: height/23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Mycolors.textcolor1
                          )
                          
                        ),
                        child: Center(
                          child: Text("Promo Model",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                        ),
                      )
                      
                    ],
                  ),
                  SizedBox(height: height/60,),
                                         Container(
                                           width: width,
                                           height: 1,
                                           color: Mycolors.bordercolor,
                                         ),
                  SizedBox(height: height/60,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Casting Description",
                                      style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                  ),
                  SizedBox(height: height/60,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(text: TextSpan(
                children: [
                  TextSpan(text: "Dom's grandam throws a roger and dom discovers unsavory secrets about the history of his grandma's house.  ",
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1) ),
                   TextSpan(text: 'Show more',
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.blue) ),
                

                ]
              )),
                  ),
                  SizedBox(height: height/60,),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      width: width,
                      height: height/2.5,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Mycolors.bordercolor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ID #1234567 - Yoshio",
                          style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.blue),),
                          SizedBox(height: height/70,),
                          Text("Dom's grandam throws a roger and dom discovers unsavory secrets about the history of his grandma's house. Show More",
                          style: TextStyle(fontSize: 15,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1),),

                          SizedBox(height: height/60,),

                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Gender:-",
                          style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),
                          Text("Male",
                          style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                                ],
                              ),
                            SizedBox(width: width/4,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Age:-",
                          style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),
                          Text("23-26",
                          style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                                ],
                              ),

                          
                            ],
                          ),
                          SizedBox(height: height/60,),
                          Text("Ethnicity :-",
                          style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),
                          Text("African or African American",
                          style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),

                          SizedBox(height: height/60,),
                          Text("Expiration  :-",
                          style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),
                          Text("Apr 10, 2019",
                          style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Heavy',color: Colors.blue),),
                          SizedBox(height: height/60,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: width/3.2,
                                height: height/18,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Mycolors.blue
                                  )
                                ),
                                child: Center(
                                  child: Text("Save For Latter",
                          style: TextStyle(fontSize: 15,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.blue),),
                                ),
                              ),

                              Container(
                                width: width/3.2,
                                height: height/18,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(
                                  //   color: Mycolors.blue
                                  // )
                                  color: Mycolors.blue
                                ),
                                child: Center(
                                  child: Text("Apply Now",
                          style: TextStyle(fontSize: 15,fontFamily: 'AvenirLTStd-Medium',color: Colors.white,),
                                ),
                              )
                              )
                            ],
                          )
                                
                        ],
                        
                      ),
                      
                    ),
                  ),


                  SizedBox(height: height/60,),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      width: width,
                      height: height/2.5,
                      decoration: BoxDecoration(
                        color: Mycolors.textfieldcolor,
                        border: Border.all(
                          color: Colors.green
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ID #1234567 - Graig",
                          style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.blue),),
                          SizedBox(height: height/70,),
                          Text("Dom's grandam throws a roger and dom discovers unsavory secrets about the history of his grandma's house. Show More",
                          style: TextStyle(fontSize: 15,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1),),

                          SizedBox(height: height/60,),

                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Gender:-",
                          style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),
                          Text("Male",
                          style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                                ],
                              ),
                            SizedBox(width: width/4,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Age:-",
                          style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),
                          Text("23-26",
                          style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                                ],
                              ),

                          
                            ],
                          ),
                          SizedBox(height: height/60,),
                          Text("Ethnicity :-",
                          style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),
                          Text("African or African American",
                          style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),

                          SizedBox(height: height/60,),
                          Text("Expiration  :-",
                          style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),
                          Text("Apr 10, 2019",
                          style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Heavy',color: Colors.blue),),
                          SizedBox(height: height/60,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: width/3.2,
                                height: height/18,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.green
                                  )
                                ),
                                child: Center(
                                  child: Text("Cancel",
                          style: TextStyle(fontSize: 15,fontFamily: 'AvenirLTStd-Medium',color: Colors.green),),
                                ),
                              ),

                              Container(
                                width: width/3.2,
                                height: height/18,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(
                                  //   color: Mycolors.blue
                                  // )
                                  color: Colors.green
                                ),
                                child: Center(
                                  child: Image.asset('assets/Group 181.png',height: 20,),
                              )
                              )
                            ],
                          )
                                
                        ],
                        
                      ),
                      
                    ),
                  )

                                      ],

                                      
                                    ),
                                  ),
                                ),

                              );
                            }
                            );
                        },
                        child: Text("View details",
                                    style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.blue),),
                      ),
                    ],
                  ),
                  SizedBox(height: height/50,),
                  Row(
                    
                    
                    children: [
                      Text("ID #1234569 - Yoshio",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Colors.green),),
                      SizedBox(width: 10,),
                      Image.asset('assets/Group 24.png',height: 20,)
                    ],
                  ),

                  SizedBox(height: height/70,),
                  Row(
                    
                    
                    children: [
                      Text("ID #1234458 - Irene  ",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Colors.green),),
                      SizedBox(width: 10,),
                      Image.asset('assets/Group 24.png',height: 20,)
                    ],
                  ),

                  SizedBox(height: height/70,),
                  Row(
                    
                    
                    children: [
                      Text("ID #4589567 - Matsu  ",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),
                      
                    ],
                  ),
                  SizedBox(height: height/50,),

                  Center(
                    child: Container(
                      width: width/1.8,
                      height: height/15,
                      decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)

                      ),
                      child: Center(
                        child: Image.asset('assets/Group 181.png',height: 30,),
                      ),
                    ),
                  )


                ],
              ),
            ),

            SizedBox(height: height/50,),
            Container(
              width: width,
              height: height/2.4,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                border: Border.all(
                  color: Mycolors.textcolor1
                )
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$2,190 Feature Film Malaysia",
                                  style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.blue),),
                      Icon(Icons.star_border,color: Colors.yellow,size: 30,)
                    ],
                  ),

            SizedBox(height: height/70,),
                Row(
                    
                    children: [
                      Image.asset('assets/Path 26.png',height: 20,),
                      SizedBox(width: 10,),
                      Text("Nationwide",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Colors.blue),),
                      SizedBox(width: 20,),
                      Image.asset('assets/Path 27.png',height: 18,),
                      SizedBox(width: 10,),
                      Text("11-30-2014",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Colors.red),),
                      
                    ],
                  ),

                   SizedBox(height: height/70,),
                Row(
                    
                    children: [
                      Container(
                        width: width/4,
                        height: height/23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Mycolors.textcolor1
                          )
                          
                        ),
                        child: Center(
                          child: Text("Trade Shows",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: width/4,
                        height: height/23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Mycolors.textcolor1
                          )
                          
                        ),
                        child: Center(
                          child: Text("Live Events",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                        ),
                      )
                      ,

                       SizedBox(width: 10,),
                      Container(
                        width: width/4,
                        height: height/23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Mycolors.textcolor1
                          )
                          
                        ),
                        child: Center(
                          child: Text("Promo Model",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                        ),
                      )
                      
                    ],
                  ),
                  SizedBox(height: height/70,),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Matched Role",
                                  style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),
                      Text("View details",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.blue),),
                    ],
                  ),
                  SizedBox(height: height/50,),
                  Row(
                    
                    
                    children: [
                      Text("ID #1234569 - Yoshio",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Colors.green),),
                      SizedBox(width: 10,),
                      Image.asset('assets/Group 24.png',height: 20,)
                    ],
                  ),

                  SizedBox(height: height/70,),
                  Row(
                    
                    
                    children: [
                      Text("ID #1234458 - Irene  ",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Colors.green),),
                      SizedBox(width: 10,),
                      Image.asset('assets/Group 24.png',height: 20,)
                    ],
                  ),

                  SizedBox(height: height/70,),
                  Row(
                    
                    
                    children: [
                      Text("ID #4589567 - Matsu  ",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),
                      
                    ],
                  ),
                  SizedBox(height: height/50,),

                  Center(
                    child: Container(
                      width: width/1.8,
                      height: height/15,
                      decoration: BoxDecoration(
                      color: Mycolors.blue,
                      borderRadius: BorderRadius.circular(10)

                      ),
                      child: Center(
                        child: Text("Apply Now  ",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Colors.white),)
                      ),
                    ),
                  )


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}