import 'package:auditions/config/colors.dart';
import 'package:flutter/material.dart';

class Name extends StatefulWidget {
  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<Name> {
    String first="";
  String last="";
  TextEditingController _first=TextEditingController();
  TextEditingController _last=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("What's your name ?",
                    style: TextStyle(fontSize: 30,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                    SizedBox(height: height/70,),
             Text('Enter your full name to continue...',style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),

            SizedBox(height: height/20,),
            Container(
                      padding: EdgeInsets.only(top:4,left: 20,right: 20 ),
                      width: width,
                      height: height/15,
                      decoration: BoxDecoration(
                        color: Mycolors.textfieldcolor,
                        border: Border.all(
                          color: Mycolors.bordercolor,
                        ),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: TextFormField(
                          controller: _first,
                          onChanged: (val){
                            this.first=val;
                          },
                          style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                          decoration: InputDecoration(
                           // contentPadding: EdgeInsets.symmetric(vertical: 8),
                          
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          
                            hintText: 'First Name',
                            hintStyle: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor.withAlpha(80))
                            
                          ),
                        ),
                      ),
                    ),
            SizedBox(height: height/40,),
                Container(
                      padding: EdgeInsets.only(top:4,left: 20,right: 20 ),
                      width: width,
                      height: height/15,
                      decoration: BoxDecoration(
                        color: Mycolors.textfieldcolor,
                        border: Border.all(
                          color: Mycolors.bordercolor,
                        ),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: TextFormField(
                          controller: _last,
                          onChanged: (val){
                            this.last=val;
                          },
                          style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                          decoration: InputDecoration(
                           // contentPadding: EdgeInsets.symmetric(vertical: 8),
                          
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          
                            hintText: 'Last Name',
                            hintStyle: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor.withAlpha(80))
                            
                          ),
                        ),
                      ),
                    ),
                      

            
            
                     
        ],
      ),
      
    );
  }
}