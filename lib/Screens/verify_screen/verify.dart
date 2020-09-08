import 'package:auditions/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Verify extends StatefulWidget {
  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  String input1="";
  TextEditingController _input1=TextEditingController();
  String input2="";
  TextEditingController _input2=TextEditingController();
  String input3="";
  TextEditingController _input3=TextEditingController();
  String input4="";
  TextEditingController _input4=TextEditingController();
  var check=false;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(left: 20,right: 20,bottom: 50),
        width: width,
        height: height,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height/25,),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                width: width/9,
                height:  width/9,
                decoration: BoxDecoration(
                  color: Mycolors.blue,
                  shape: BoxShape.circle
                ),
                child: Center(child: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,), onPressed: null)),
              ),
            ),
            SizedBox(height: height/20,),
            Text("Verify your email",
                    style: TextStyle(fontSize: 35,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                    SizedBox(height: height/70,),
             Text('Please enter the 4 digit code sent to Doe@gmail.com',style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),

            SizedBox(height: height/20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  
                Container(
                          padding: EdgeInsets.only(top:4,left: 20,right: 10 ),
                          width: height/15,
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
                              inputFormatters: [LengthLimitingTextInputFormatter(1)],
                              controller: _input1,
                              onChanged: (val){
                                this.input1=val;
                              },
                              keyboardType: TextInputType.number,

                              style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                              decoration: InputDecoration.collapsed(
                               // contentPadding: EdgeInsets.symmetric(vertical: 8),
                              
                                
                                hintText: '*',
                                hintStyle: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor.withAlpha(80))
                                
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: width/30,),

                        Container(
                          padding: EdgeInsets.only(top:4,left: 20,right: 20 ),
                          width: height/15,
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
                              inputFormatters: [LengthLimitingTextInputFormatter(1)],
                              controller: _input2,
                              onChanged: (val){
                                this.input2=val;
                              },
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                              decoration: InputDecoration.collapsed(
                               // contentPadding: EdgeInsets.symmetric(vertical: 8),
                              
                               
                                hintText: '*',
                                hintStyle: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor.withAlpha(80))
                                
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: width/30,),

                        Container(
                          padding: EdgeInsets.only(top:4,left: 20,right: 20 ),
                          width: height/15,
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
                              inputFormatters: [LengthLimitingTextInputFormatter(1)],
                              controller: _input3,
                              onChanged: (val){
                                this.input3=val;
                                
                              },
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                              decoration: InputDecoration.collapsed(
                               // contentPadding: EdgeInsets.symmetric(vertical: 8),
                              
                               hintText: '*',
                              
                                
                                hintStyle: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor.withAlpha(80))
                                
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: width/30,),

                        Container(
                          padding: EdgeInsets.only(top:4,left: 20,right: 20 ),
                          width: height/15,
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
                              inputFormatters: [LengthLimitingTextInputFormatter(1)],
                              controller: _input4,
                              onChanged: (val){
                                this.input4=val;
                                if (_input1!=null && _input2!=null && _input3!=null && _input4!=null ){
                                  setState(() {
                                    check=true;
                                  });
                                } if (_input1==null || _input2==null || _input3==null || _input4==null ){
                                  setState(() {
                                    check=false;
                                  });
                                }
                              },
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                              decoration: InputDecoration.collapsed(
                               // contentPadding: EdgeInsets.symmetric(vertical: 8),
                              
                               
                              
                                hintText: '*',
                                hintStyle: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor.withAlpha(80))
                                
                              ),
                            ),
                          ),
                        ),
              ],
            ),
                      Expanded(child: SizedBox()),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                            width: width/1.15,
                            
                            height: height/13,
                            decoration: BoxDecoration(
                              color:check? Mycolors.blue: Mycolors.textfieldcolor,
                              borderRadius: BorderRadius.circular(40)
                            ),
                            child: Center(
                              child:
                          Text('Confirm',style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color:check? Colors.white: Mycolors.textcolor,),
                               
                            ),
                          )

                          ),
                    ),
          ],
        ),
      ),
      
    );
  }
}