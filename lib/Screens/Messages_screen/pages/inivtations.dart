import 'package:auditions/config/colors.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Invitations extends StatefulWidget {
  @override
  _InvitationsState createState() => _InvitationsState();
}

class _InvitationsState extends State<Invitations> {
  
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
            
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              width: width,
              //height: height/5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: Mycolors.bordercolor
                )
              
              ),
              child: ExpandablePanel(
      header:Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/Ellipse 43.png',height: 60,),
                      SizedBox(width: width/40,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           RichText(text: TextSpan(
                children: [
                  TextSpan(text: "Rangga Cahya ",
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.blue) ),
                   TextSpan(text: 'has invited you ',
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor) ),
                

                ]
              )),
                      
                                    SizedBox(height: height/150,),
                          Text("1 month ago",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),),
                           
                           
                        ],
                      ),
                      
                    ],
                  )
                ],
              ) ,
      //collapsed: Text(article.body, softWrap: true, maxLines: 2, overflow: TextOverflow.ellipsis,),
      expanded: Container(
        // margin: EdgeInsets.symmetric(horizontal: 20),
             // padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              width: width,
              height: height/3.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height/70,),
                  Text("Rangga Cahya has invited you to apply for the role of 'Dater'...",
                                    style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.blue),),
                  SizedBox(height: height/70,),
                Row(
                    
                    children: [
                      Image.asset('assets/Path 26.png',height: 20,),
                      SizedBox(width: 10,),
                      Text("Washington DC",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Colors.blue),),
                      SizedBox(width: 20,),
                      Text("Submitted Date:- ",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color:Mycolors.textcolor1),),
                      Text("Dec 3, 2019",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color:Mycolors.textcolor),),
                     
                      
                    ],
                  ),

                  SizedBox(height: height/70,),
                  Text("Production Details",
                                    style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                  SizedBox(height: height/70,),

                  RichText(text: TextSpan(
                children: [
                  TextSpan(text: "Casting a comedic web series about dating disasters and successes. In a series, (mostly) scripted …. ",
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor) ),
                   TextSpan(text: 'Read more ',
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.blue) ),
                

                ]
              )),
                  SizedBox(height: height/70,),
                  Center(
                    child: Container(
                      width: width/1.8,
                      height: height/15,
                      decoration: BoxDecoration(
                      color: Mycolors.blue,
                      borderRadius: BorderRadius.circular(10)

                      ),
                      child: Center(
                        child: Text("View Invitation",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Colors.white),)
                      ),
                    ),
                  )

                ],
              ),
      ),

    ),
            ),

            SizedBox(
              height: height/90,
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              width: width,
              //height: height/5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: Mycolors.bordercolor
                )
              
              ),
              child: ExpandablePanel(
      header:Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/Ellipse 43.png',height: 60,),
                      SizedBox(width: width/40,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           RichText(text: TextSpan(
                children: [
                  TextSpan(text: "Rangga Cahya ",
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.blue) ),
                   TextSpan(text: 'has invited you ',
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor) ),
                

                ]
              )),
                      
                                    SizedBox(height: height/150,),
                          Text("1 month ago",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),),
                           
                           
                        ],
                      ),
                      
                    ],
                  )
                ],
              ) ,
      //collapsed: Text(article.body, softWrap: true, maxLines: 2, overflow: TextOverflow.ellipsis,),
      expanded: Container(
        // margin: EdgeInsets.symmetric(horizontal: 20),
             // padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              width: width,
              height: height/3.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height/70,),
                  Text("Rangga Cahya has invited you to apply for the role of 'Dater'...",
                                    style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.blue),),
                  SizedBox(height: height/70,),
                Row(
                    
                    children: [
                      Image.asset('assets/Path 26.png',height: 20,),
                      SizedBox(width: 10,),
                      Text("Washington DC",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Colors.blue),),
                      SizedBox(width: 20,),
                      Text("Submitted Date:- ",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color:Mycolors.textcolor1),),
                      Text("Dec 3, 2019",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color:Mycolors.textcolor),),
                     
                      
                    ],
                  ),

                  SizedBox(height: height/70,),
                  Text("Production Details",
                                    style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                  SizedBox(height: height/70,),

                  RichText(text: TextSpan(
                children: [
                  TextSpan(text: "Casting a comedic web series about dating disasters and successes. In a series, (mostly) scripted …. ",
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor) ),
                   TextSpan(text: 'Read more ',
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.blue) ),
                

                ]
              )),
                  SizedBox(height: height/70,),
                  Center(
                    child: Container(
                      width: width/1.8,
                      height: height/15,
                      decoration: BoxDecoration(
                      color: Mycolors.blue,
                      borderRadius: BorderRadius.circular(10)

                      ),
                      child: Center(
                        child: Text("View Invitation",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Colors.white),)
                      ),
                    ),
                  )

                ],
              ),
      ),

    ),
            ),

             SizedBox(
              height: height/90,
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              width: width,
              //height: height/5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: Mycolors.bordercolor
                )
              
              ),
              child: ExpandablePanel(
      header:Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/Ellipse 40.png',height: 60,),
                      SizedBox(width: width/40,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           RichText(text: TextSpan(
                children: [
                  TextSpan(text: "Danish perk ",
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.blue) ),
                   TextSpan(text: 'has invited you ',
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor) ),
                

                ]
              )),
                      
                                    SizedBox(height: height/150,),
                          Text("1 month ago",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),),
                           
                           
                        ],
                      ),
                      
                    ],
                  )
                ],
              ) ,
      //collapsed: Text(article.body, softWrap: true, maxLines: 2, overflow: TextOverflow.ellipsis,),
      expanded: Container(
        // margin: EdgeInsets.symmetric(horizontal: 20),
             // padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              width: width,
              height: height/3.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height/70,),
                  Text("Rangga Cahya has invited you to apply for the role of 'Dater'...",
                                    style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.blue),),
                  SizedBox(height: height/70,),
                Row(
                    
                    children: [
                      Image.asset('assets/Path 26.png',height: 20,),
                      SizedBox(width: 10,),
                      Text("Washington DC",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Colors.blue),),
                      SizedBox(width: 20,),
                      Text("Submitted Date:- ",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color:Mycolors.textcolor1),),
                      Text("Dec 3, 2019",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color:Mycolors.textcolor),),
                     
                      
                    ],
                  ),

                  SizedBox(height: height/70,),
                  Text("Production Details",
                                    style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                  SizedBox(height: height/70,),

                  RichText(text: TextSpan(
                children: [
                  TextSpan(text: "Casting a comedic web series about dating disasters and successes. In a series, (mostly) scripted …. ",
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor) ),
                   TextSpan(text: 'Read more ',
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.blue) ),
                

                ]
              )),
                  SizedBox(height: height/70,),
                  Center(
                    child: Container(
                      width: width/1.8,
                      height: height/15,
                      decoration: BoxDecoration(
                      color: Mycolors.blue,
                      borderRadius: BorderRadius.circular(10)

                      ),
                      child: Center(
                        child: Text("View Invitation",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Colors.white),)
                      ),
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