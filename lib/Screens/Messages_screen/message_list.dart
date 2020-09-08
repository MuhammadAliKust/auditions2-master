import 'package:auditions/Screens/Messages_screen/pages/all.dart';
import 'package:auditions/Screens/Messages_screen/pages/inivtations.dart';
import 'package:auditions/Screens/Messages_screen/pages/messages.dart';
import 'package:auditions/config/colors.dart';
import 'package:flutter/material.dart';

class Messageslist extends StatefulWidget {
  @override
  _MessageslistState createState() => _MessageslistState();
}

class _MessageslistState extends State<Messageslist> {
    var match=false;
  var search=false;
  var fav=false;
   PageController controller=PageController(initialPage: 0);
 var page_index=1;
 void pagechage(index){
   setState(() {
     // page_index=index+1;
      print("pagestart:$page_index");
    controller.jumpToPage(index);
      
    });
 }

 @override
  void initState() {
    // TODO: implement initState
    
    setState(() {
      
      match=true;
    });
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
     // padding: EdgeInsets.symmetric(horizontal: 20),
      width: width,
      height: height,
      color: Mycolors.white,

      child: Column(
        children: [
          SizedBox(height: height/70,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: width,
              height: height/16,
              decoration: BoxDecoration(
                color: Mycolors.textfieldcolor,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     InkWell(
                       onTap: (){
                         pagechage(0);
                         setState(() {
                           match=true;
                           search=false;
                           fav=false;
                         });
                       },
                       child: Container(
                          width: width/3.4,
                          height: height/16,
                          decoration: BoxDecoration(
                            color:match?Mycolors.blue: Mycolors.textfieldcolor,
                            borderRadius: BorderRadius.circular(50)
                          ),
                         child: Center(
                           child: Text("All",
                                style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Medium',color:match?Colors.white: Mycolors.textcolor1),),
                         ),
                       ),
                     ),

                      InkWell(
                       onTap: (){
                         pagechage(1);
                         setState(() {
                           match=false;
                           search=true;
                           fav=false;
                         });
                       },
                       child: Container(
                          width: width/3.4,
                          height: height/16,
                          decoration: BoxDecoration(
                            color:search?Mycolors.blue: Mycolors.textfieldcolor,
                            borderRadius: BorderRadius.circular(50)
                          ),
                         child: Center(
                           child: Text("Messages",
                                style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Medium',color:search?Colors.white: Mycolors.textcolor1),),
                         ),
                       ),
                     ),
                    
                     InkWell(
                       onTap: (){
                        pagechage(2);
                         setState(() {
                           match=false;
                           search=false;
                           fav=true;
                         });
                       },
                       child: Container(
                          width: width/3.4,
                          height: height/16,
                          decoration: BoxDecoration(
                            color:fav?Mycolors.blue: Mycolors.textfieldcolor,
                            borderRadius: BorderRadius.circular(50)
                          ),
                         child: Center(
                           child: Text("Invitations",
                                style: TextStyle(fontSize: 14,fontFamily: 'AvenirLTStd-Medium',color:fav?Colors.white: Mycolors.textcolor1),),
                         ),
                       ),
                     ),
                      
                       ],
                ),
              ),
            ),
          ),

          SizedBox(height: height/50,),
         Container(
           width: width,
           height: height/1.36,
           child: PageView(
             controller: controller,
             physics: NeverScrollableScrollPhysics(),
             children: [
               All(),
               Messages(),
               Invitations()
             ],
           ),
         )
        ],
      ),
      
    );
  }
}