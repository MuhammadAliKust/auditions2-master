import 'package:auditions/Screens/media_module/audio.dart';
import 'package:auditions/Screens/media_module/documents.dart';
import 'package:auditions/Screens/media_module/photos.dart';
import 'package:auditions/Screens/media_module/video.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

import '../../config/colors.dart';

class MediaTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Add Media",
              style: TextStyle(color: Mycolors.blue),
            ),
            centerTitle: true,
            leading: Icon(Icons.arrow_back, color: Mycolors.blue),
            bottom: TabBar(
                indicatorColor: Color(0xff014E82),
                labelColor: Color(0xff014E82),
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                      child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.camera_alt,
                      ),
                      Text(
                        "Photos",
                      )
                    ],
                  )),
                  Tab(
                      child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.videocam,
                      ),
                      Text(
                        "Video",
                      )
                    ],
                  )),
                  Tab(
                      child: Column(
                    children: <Widget>[
                      ImageIcon(
                        AssetImage("assets/images/mic.png"),
                      ),
                      Text(
                        "Audio",
                      )
                    ],
                  )),
                  Tab(
                      child: Column(
                    children: <Widget>[
                      Icon(
                        Mdi.fileDocument,
                      ),
                      Text(
                        "Documents",
                      )
                    ],
                  )),
                ]),
          ),
        ),
        body: TabBarView(
          children: [
            AddPhoto(),
            Videos(),
            Audio(),
            Documents(),
          ],
        ),
      ),
    );
  }
}
