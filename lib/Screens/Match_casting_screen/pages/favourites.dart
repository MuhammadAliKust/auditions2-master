import 'package:auditions/config/colors.dart';
import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      child:  SingleChildScrollView(
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
            ]),
      ),
      
    );
  }
}