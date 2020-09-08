import 'package:auditions/Screens/Dashborad/Dashboard.dart';
import 'package:auditions/Screens/Forget_password/forget_password.dart';
import 'package:auditions/config/colors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email="";
  String password="";
  TextEditingController _email=TextEditingController();
  TextEditingController _password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(

      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/login_pic.png'),fit: BoxFit.cover)
              ),
              child: Image.asset('assets/mask.png',fit: BoxFit.cover,),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Container(
                padding: EdgeInsets.only(top: 40,left: 20,right: 20),
                width: width/1.1,
                height: height/1.69,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("Welcome Back",
                    style: TextStyle(fontSize: 35,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                    SizedBox(height: height/60,),
                    Text("Login to your existent account \nof auditions",textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor.withAlpha(80)),),
                    SizedBox(height: height/30,),
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


                    SizedBox(height: height/45,),
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
                          controller: _password,
                          onChanged: (val){
                            this.password=val;
                          },
                          obscureText: true,
                          style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                          decoration: InputDecoration(
                           // contentPadding: EdgeInsets.symmetric(vertical: 8),
                          
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          
                            hintText: 'Password',
                            hintStyle: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor.withAlpha(80))
                            
                          ),
                        ),
                      ),

                    ),

                    SizedBox(height: height/50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Foregtpasswrod()));
                          },
                          child: Text("Forgot Password ?",textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Light',color: Mycolors.textcolor.withAlpha(90)),),
                        ),
                      ],
                    ),
                    SizedBox(height: height/30,),
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (contexr)=>Dashboard()));
                       },
                       child: Container(
                              width: width,
                              
                              height: height/14,
                              decoration: BoxDecoration(
                                color: Mycolors.blue,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child:
                            Text('LOG IN',style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Heavy',color: Colors.white,),
                                 
                              ),
                            )

                            ),
                     ),
                    SizedBox(height: height/30,),
                    Image.asset('assets/facebook2.png',height: 25,)

                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have An Account ? ",
                  style: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-light',color: Mycolors.textcolor1),),
                  Text("Sign up",
              style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Medium',color: Colors.white),)
                ],
              ),
            ),
            
            ),


        ],
      ),
      
    );
  }
}