import 'package:auditions/config/colors.dart';
import 'package:flutter/material.dart';

class Caht extends StatefulWidget {
  @override
  _CahtState createState() => _CahtState();
}

class _CahtState extends State<Caht> {
  @override
  Widget build(BuildContext context) {
        var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
       // automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: Colors.white,
        primary: true,
        // shadowColor: Mycolors.shadow.withOpacity(0.5),
        leading: Icon(Icons.arrow_back,color: Mycolors.blue,size: 30,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.more_vert,color: Mycolors.blue,size: 30,),
          )
        ],
        title:  Row(
                    children: [
                      Image.asset('assets/Group 474.png',height: 40,),
                      SizedBox(width: width/40,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Alex Embree",
                                    style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                                  //  SizedBox(height: height/150,),
                          Text("Active now",
                                    style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Roman',color: Colors.green),),
                           
                           
                        ],
                      ),
                      
                    ],
                  ),
      ),
      body: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                width: width,
                height: height/14,
                decoration: BoxDecoration(
                  color: Colors.white,
                   boxShadow: [
                      BoxShadow(
                        color: Mycolors.shadow.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                ),
                child: Row(
                  children: [
                    Image.asset('assets/attach.png',height: 30,),
                    SizedBox(width: width/20,),
                    Container(
                      width: width/1.7,
                      height: height/15,
                      child: TextField(
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                ),
                                //filled: true,
                                suffixText: 'Send Now',
                                suffixStyle: TextStyle(fontSize: 18,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.blue),
                                hintStyle: new TextStyle(color: Colors.grey[800]),
                                hintText: "Write text here... ",
                                fillColor: Colors.white70),
                          ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        
      ),
    );
  }
}