import 'package:auditions/Screens/signup_screen/pages/custom_package.dart';
import 'package:auditions/config/colors.dart';
import 'package:country_list_pick/support/code_country.dart';
import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  var male=false;
  var female=false;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Choose your gender",
                    style: TextStyle(fontSize: 30,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                    SizedBox(height: height/70,),
             Text('Select your gender to continue...',style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),

            SizedBox(height: height/20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      male=true;
                      female=false;
                    });
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: width/2.4,
                      height: height/5,
                       decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color:male?Mycolors.blue: Colors.white
                    ),
                    child:  Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: width/11,
                            height: width/11,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:male?Mycolors.textfieldcolor.withOpacity(0.2): Mycolors.textfieldcolor
                            ),
                            child:male?Icon(Icons.check,color: Colors.white,): Container(),
                          ),
                        ),
                        Align(
                          alignment:Alignment.center ,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/male.png',height: 100,),
                              SizedBox(height: height/70,),
               Text("I'm Male",style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color:male?Colors.white: Mycolors.textcolor1),),

                            ],
                          ),
                          )
                      ],
                    ),
                    ),
                  ),
                ),

                 InkWell(
                  onTap: (){
                    setState(() {
                      male=false;
                      female=true;
                    });
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: width/2.4,
                      height: height/5,
                       decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color:female?Mycolors.blue: Colors.white
                    ),
                    child:  Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: width/11,
                            height: width/11,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:female?Mycolors.textfieldcolor.withOpacity(0.2): Mycolors.textfieldcolor
                            ),
                            child:female?Icon(Icons.check,color: Colors.white,): Container(),
                          ),
                        ),
                        Align(
                          alignment:Alignment.center ,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/female.png',height: 100,),
                              SizedBox(height: height/70,),
               Text("I'm Female",style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color:female?Colors.white: Mycolors.textcolor1),),

                            ],
                          ),
                          )
                      ],
                    ),
                    ),
                  ),
                ),

              ],
            )
            
            
                     
        ],
      ),
      
    );
  }
}