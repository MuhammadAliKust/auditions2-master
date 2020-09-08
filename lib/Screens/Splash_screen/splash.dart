import 'package:auditions/Screens/Login_screen/Login.dart';
import 'package:auditions/Screens/signup_screen/signup.dart';
import 'package:auditions/config/colors.dart';
import 'package:auditions/config/textstyles.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(

      body: Container(
        width: width,
        height: height,
        color: Colors.white,

        child: Column(

          children: [
            SizedBox(height: height/25,),
           Padding(
             padding: const EdgeInsets.only(left:30.0,right: 20),
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                  Image.asset('assets/logo.png',height: 45,),
                  Expanded(child: SizedBox()),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                    child: Text('LOG IN',style: TextStyle(fontSize: 22,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),))
               ],
              
             ),
           ),
            SizedBox(height: height/40,),

           Container(
             width: width,
             height: height/1.13,
             
             child: Stack(
               
               children: [
                 Image.asset('assets/splash.png'),
                 Positioned(
                   top: height/2,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 30),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        Text('Welcome to',style: TextStyle(fontSize: 25,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.blue),),
                        SizedBox(height: height/50,),
                        Text('Auditions.com',style: TextStyle(fontSize: 40,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                        SizedBox(height: height/30,),
                        InkWell(
                          splashColor: Mycolors.textfieldcolor,
                          onTap: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));

                          },
                          child: Container(
                            width: width/1.15,
                            
                            height: height/12,
                            decoration: BoxDecoration(
                              color: Mycolors.blue,
                              borderRadius: BorderRadius.circular(40)
                            ),
                            child: Center(
                              child:
                          Text('SIGN UP',style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Heavy',color: Colors.white,),
                               
                            ),
                          )

                          ),
                        ),
                        SizedBox(height: height/30,),
                        Container(
                          width: width/1.15,
                          child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: width/5,
                                height: 1,
                                color: Colors.grey[200]
                              ),
                              SizedBox(width: 15,),
                          Text('Or',style: TextStyle(fontSize: 15,fontFamily: 'AvenirLTStd-Heavy',color:Colors.grey,)),
                              SizedBox(width: 15,),
                              Container(
                                width: width/5,
                                height: 1,
                                color:  Colors.grey[200],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height/30,),
                        Container(
                          width: width/1.15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/facebook.png',height: 25,),
                              SizedBox(width: 30,),
                              Image.asset('assets/google.png',height: 25,)
                            ],
                          ),
                        )
                       ],
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