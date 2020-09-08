import 'package:auditions/Screens/Activity_feed_screen/activityfeed.dart';
import 'package:auditions/Screens/Dashboard_Dashboard/Dashboard_screen.dart';
import 'package:auditions/Screens/Match_casting_screen/match_castng.dart';
import 'package:auditions/Screens/Messages_screen/message_list.dart';
import 'package:auditions/Screens/profile/profile.dart';
import 'package:auditions/Screens/signup_screen/signup.dart';
import 'package:auditions/config/colors.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
String title="Match Casting";
  int _currentIndex = 0;
  final List<Widget> _children = [
    Matchactivity(),
    Activityfeed(),
    Dashboard_screen(),
    Messageslist(),
    Profile(),
    
    
  ];
void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
   if(index==0){
     setState(() {
       title="Match Casting";
     });
     
   }
   if(index==1){
     setState(() {
       title="Activity Feed";
     });
     }

     if(index==2){
     setState(() {
       title="Dashboard";
     });
     }
     if(index==3){
     setState(() {
       title="Messages/Invitations";
     });
     }
     if(index==4){
     setState(() {
       title="Profile";
     });
     }
 }
  @override
  Widget build(BuildContext context) {
        var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 5,
        backgroundColor: Colors.white,
        primary: true,
        // shadowColor: Mycolors.shadow.withOpacity(0.5),
        //leading: Icon(Icons.check_circle,color: Colors.blue,),
        //centerTitle: true,
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/menu.png',height: 20,),
            Text(title,
                        style: TextStyle(fontSize: 25,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.blue),),
            Image.asset('assets/setting.png',height: 25,),
            
          ],
        ),
      ),

      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        child: _children[_currentIndex],

      ),
      bottomNavigationBar: Container(
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
                    ],),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          backgroundColor: Colors.white,
          selectedFontSize: 12,
          selectedItemColor: Mycolors.blue,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(fontSize: 10,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.blue),
          unselectedLabelStyle: TextStyle(fontSize: 10,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor1),
          //elevation: 20,
          items: [
            BottomNavigationBarItem(icon: Image.asset('assets/camera.png',height: 25,),
            activeIcon:Image.asset('assets/Group 12.png',height: 25,) ,
          
            title: Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text("Match Casting",),
            ),
                          ),

          BottomNavigationBarItem(icon: Image.asset('assets/Path 7.png',height: 25,),
            activeIcon:Image.asset('assets/Group 13.png',height: 25,) ,
          
            title: Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text("Activity",),
            ),
                          ),

           BottomNavigationBarItem(icon: Image.asset('assets/dash.png',height: 25,),
            activeIcon:Image.asset('assets/Group 149.png',height: 25,) ,
          
            title: Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text("Dashboard",),
            ),
                          ),

         BottomNavigationBarItem(icon: Image.asset('assets/2.png',height: 25,),
            activeIcon:Image.asset('assets/Group 147.png',height: 25,) ,
          
            title: Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text("Message",),
            ),
                          ),
           BottomNavigationBarItem(icon: Image.asset('assets/profile.png',height: 25,),
            activeIcon:Image.asset('assets/Group 15.png',height: 25,) ,
          
            title: Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text("Profile",),
            ),
                          ),
                          
           
          ]
          ),
      ),
     
      
    );
  }
}