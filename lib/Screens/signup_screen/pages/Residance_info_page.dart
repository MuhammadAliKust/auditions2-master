import 'package:auditions/Screens/signup_screen/pages/custom_package.dart';
import 'package:auditions/config/colors.dart';
import 'package:country_list_pick/support/code_country.dart';
import 'package:flutter/material.dart';

class Residance extends StatefulWidget {
  @override
  _ResidanceState createState() => _ResidanceState();
}

class _ResidanceState extends State<Residance> {
    String city="";
  String zip="";
  TextEditingController _city=TextEditingController();
  TextEditingController _zip=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Where Do you live?",
                    style: TextStyle(fontSize: 30,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                    SizedBox(height: height/70,),
             Text('Select your location to continue...',style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),

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
                        child: CountryListPick(
            isShowFlag: true,
            isShowTitle: true,
            isShowCode: false,
            isDownIcon: true,
            initialSelection: 'gb',
            showEnglishName: true,
            onChanged: (CountryCode code) {
              print(code.name);
              print(code.code);
              print(code.dialCode);
              print(code.flagUri);
            },
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
                          controller: _city,
                          onChanged: (val){
                            this.city=val;
                          },
                          style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                          decoration: InputDecoration(
                           // contentPadding: EdgeInsets.symmetric(vertical: 8),
                          
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            suffixIcon: Icon(Icons.keyboard_arrow_down),
                            hintText: 'City',
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
                          controller: _zip,
                          onChanged: (val){
                            this.zip=val;
                          },
                          style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                          decoration: InputDecoration(
                           // contentPadding: EdgeInsets.symmetric(vertical: 8),
                          
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            //suffixIcon: Icon(Icons.keyboard_arrow_down),
                            hintText: 'Zip Code',
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