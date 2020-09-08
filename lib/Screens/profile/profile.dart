import 'package:flutter/material.dart';

import 'icons/app_bar_icons_icons.dart';
import 'icons/my_flutter_app_icons.dart';
import 'icons/nav_bar_icons.dart';
import 'screens/profile/about_me.dart';
import 'screens/profile/details.dart';
import 'screens/profile/media.dart';
import 'screens/profile/special_skills.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedTabIndex = 0;

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  int _currentIndex = 0;
  List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.teal,
    Colors.brown,
    Colors.pink
  ];
  TabController _tabController;

  _onChanged() {
    //update with a new color when the user taps button
    int _colorCount = _colors.length;

    setState(() {
      if (_currentIndex == _colorCount - 1) {
        _currentIndex = 0;
      } else {
        _currentIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'CustomFont'),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(270.0),
            child: AppBar(
                centerTitle: true,
                leading: Builder(builder: (BuildContext context) {
                  return IconButton(
                    icon: Icon(
                      MyFlutterApp.image2vector,
                      color: Color(0xff014E82),
                      size: 15,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                }),
                actions: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.settings,
                        color: Color(0xff014E82),
                      ),
                      onPressed: () {}),
                ],
                automaticallyImplyLeading: false, // hides leading widget
                flexibleSpace: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 17,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/db.png',
                            width: 70,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Dorothy B. Taylor',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .merge(TextStyle(
                                      color: Color(0xff014E82),
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xff009AFF),
                                ),
                                Text(
                                  'Beverly Hills,CA',
                                  style: TextStyle(color: Color(0xff009AFF)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {},
                          color: Color(0xff014E82),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 44.0, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  AppBarIcons.group_11,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Add Friend",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff014E82),
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: RaisedButton(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    AppBarIcons.chat,
                                    color: Color(0xff014E82),
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Chat",
                                    style: TextStyle(
                                      color: Color(0xff014E82),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                        SizedBox(width: 20),
                      ],
                    )
                  ],
                ),
                bottom: TabBar(
                  controller: _tabController,
                  indicatorColor: Color(0xff014E82),
                  labelColor: Color(0xff014E82),
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      child: Text(
                        'Detail',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Media',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'About Me',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Special Skill',
                      ),
                    ),
                  ],
                ),
                title: Text(
                  "Profile",
                  style: TextStyle(
                      color: Color(0xff014E82), fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.white),
          ),
          body: TabBarView(
            children: [
              ProfileDetails(),
              Media(),
              AboutMe(),
              SpecialSkill(),
            ],
          ),
        ),
      ),
    );
  }
}
