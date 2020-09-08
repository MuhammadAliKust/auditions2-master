import 'package:auditions/config/colors.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var wedval=false;
    String cat="";
  TextEditingController _cat=TextEditingController();
  String mark="";
  TextEditingController _mark=TextEditingController();
  String zip="";
  TextEditingController _zip=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
                        padding: EdgeInsets.only(top:4,left: 20,right: 20 ),
                        width: width,
                        height: height/15,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Mycolors.bordercolor,
                          ),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: TextFormField(

                            controller: _cat,
                            onChanged: (val){
                              this.cat=val;
                            },
                            style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.keyboard_arrow_down),
                             // contentPadding: EdgeInsets.symmetric(vertical: 8),
                            
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            
                              hintText: 'Select Category',
                              hintStyle: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor.withAlpha(80))
                              
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height/70,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                                  Container(
                        padding: EdgeInsets.only(top:4,left: 20,right: 10 ),
                        width: width/2.3,
                        height: height/15,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Mycolors.bordercolor,
                          ),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: TextFormField(

                            controller: _mark,
                            onChanged: (val){
                              this.mark=val;
                            },
                            style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.keyboard_arrow_down),
                             // contentPadding: EdgeInsets.symmetric(vertical: 8),
                            
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            
                              hintText: 'Select the Market',
                              hintStyle: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor.withAlpha(80))
                              
                            ),
                          ),
                        ),
                      ),

                       Container(
                        padding: EdgeInsets.only(top:4,left: 20,right: 10 ),
                        width: width/2.3,
                        height: height/15,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Mycolors.bordercolor,
                          ),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: TextFormField(

                            controller: _zip,
                            onChanged: (val){
                              this.zip=val;
                            },
                            style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                            decoration: InputDecoration(
                              //suffixIcon: Icon(Icons.keyboard_arrow_down),
                             // contentPadding: EdgeInsets.symmetric(vertical: 8),
                            
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            
                              hintText: 'Enter a Zip Code',
                              hintStyle: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor.withAlpha(80))
                              
                            ),
                          ),
                        ),
                      ),
                        ],
                      ),

                      SizedBox(height: height/80,),
            
              Theme(
                data: ThemeData(
                  unselectedWidgetColor: Mycolors.blue
                ),
                child: Row(
                  children: [
                    Checkbox(
                            value: wedval,
                            onChanged: (bool value) {
                              setState(() {
                                wedval = value;
                              });
                            },
                          ),
                           Text("Match Talent Profile",
                                      style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),)
                  ],
                ),
              ),
              SizedBox(height: height/70,),

              Center(
                child: Material(
                  elevation: 10,
                  shadowColor: Mycolors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Container(
                    width: width/1.4,
                    height: height/15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Mycolors.blue
                    ),
                    child: Center(
                      child: Text("Find Auditions & Jobs",
                                    style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Colors.white),),
                    ),
                  ),
                ),
              ),

            SizedBox(height: height/50,),
            Row(
              children: [
                Text("Searched Results",
                                      style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                                      SizedBox(width: 10,),
                                      Text("(100 Matched Found)",
                                      style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),
              ],
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
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),
                      SizedBox(width: 10,),
                      //Image.asset('assets/Group 24.png',height: 20,)
                    ],
                  ),

                  SizedBox(height: height/70,),
                  Row(
                    
                    
                    children: [
                      Text("ID #1234458 - Irene  ",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),
                      SizedBox(width: 10,),
                     // Image.asset('assets/Group 24.png',height: 20,)
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
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),
                      SizedBox(width: 10,),
                      //Image.asset('assets/Group 24.png',height: 20,)
                    ],
                  ),

                  SizedBox(height: height/70,),
                  Row(
                    
                    
                    children: [
                      Text("ID #1234458 - Irene  ",
                                  style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),
                      SizedBox(width: 10,),
                     // Image.asset('assets/Group 24.png',height: 20,)
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