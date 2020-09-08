import 'package:auditions/Screens/verify_screen/verify.dart';
import 'package:auditions/config/colors.dart';
import 'package:flutter/material.dart';

class Foregtpasswrod extends StatefulWidget {
  @override
  _ForegtpasswrodState createState() => _ForegtpasswrodState();
}

class _ForegtpasswrodState extends State<Foregtpasswrod> {
  String email="";
  TextEditingController _email=TextEditingController();
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
            Text("Forgot Password",
                    style: TextStyle(fontSize: 35,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                    SizedBox(height: height/70,),
             Text('We will email you a link to reset your password.',style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),

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
                          controller: _email,
                          onChanged: (val){
                            this.email=val;
                          },
                          style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                          decoration: InputDecoration(
                           // contentPadding: EdgeInsets.symmetric(vertical: 8),
                          
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          
                            hintText: 'Email / User name',
                            hintStyle: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor.withAlpha(80))
                            
                          ),
                        ),
                      ),
                    ),
                      Expanded(child: SizedBox()),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Verify()));

                        },
                        child: Container(
                              width: width/1.15,
                              
                              height: height/13,
                              decoration: BoxDecoration(
                                color: Mycolors.blue,
                                borderRadius: BorderRadius.circular(40)
                              ),
                              child: Center(
                                child:
                            Text('Reset Password',style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Medium',color: Colors.white,),
                                 
                              ),
                            )

                            ),
                      ),
                    ),
          ],
        ),
      ),
      
    );
  }
}