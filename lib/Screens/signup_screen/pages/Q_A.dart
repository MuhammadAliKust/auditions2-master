import 'package:auditions/config/colors.dart';
import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
   
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      child: Center(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height/10,),
            Image.asset('assets/qa.png',height: 200,),
            SizedBox(height: height/20,),
            Text('These next 5 Questions will \nhelp us match you with the \nbest job',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.blue,),),

              
                       
          ],
        ),
      ),
      
    );
  }
}