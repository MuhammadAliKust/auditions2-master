import 'package:auditions/Screens/custom_widget/icons_card.dart';
import 'package:auditions/Screens/custom_widget/upload_card.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

import '../../config/colors.dart';

class Videos extends StatelessWidget {
  Widget _buildScreenUI(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              color: Color(0xffF6F6F6),
              child: DottedBorder(
                  dashPattern: [8],
                  borderType: BorderType.Rect,
                  color: Color(0xff8E8E8E),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ImageIcon(
                            AssetImage("assets/images/video.png"),
                            color: Mycolors.textcolor1,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text("Upload New Video",
                              style:
                                  Theme.of(context).textTheme.bodyText1.merge(
                                        TextStyle(color: Mycolors.textcolor1),
                                      ))
                        ],
                      ),
                    ),
                  )),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        _buildVideoCard(context,
            title: "Money Heist: Alvaro Morte",
            isFavourite: true,
            image: "assets/images/vid1.png"),
        _buildVideoCard(context,
            title: "Britain's Got Talent ",
            isFavourite: false,
            image: "assets/images/vid2.png"),
        _buildVideoCard(context,
            title: "Auditions at ArtsKSU",
            isFavourite: false,
            image: "assets/images/vid3.png")
      ],
    );
  }

  Widget _buildVideoCard(BuildContext context,
      {String title, bool isFavourite, var image}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Card(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(child: Container(child: _buildVideoThumbnail(image))),
          SizedBox(
            width: 20,
          ),
          Flexible(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle1.merge(TextStyle(
                      color: Color(0xff333333), fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  style: TextStyle(color: Color(0xff8E8E8E)),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        buildIcon(Icons.edit, Color(0xff0073B2)),
                        buildIcon(isFavourite ? Icons.star_border : Icons.star,
                            Color(0xff1CA51C)),
                        buildIcon(Icons.delete, Color(0xffF85C5C)),
                        buildIcon(Mdi.eyeOff, Color(0xff8E8E8E))
                      ]),
                )
              ],
            ),
          )),
        ],
      )),
    );
  }

  Widget _buildVideoThumbnail(var image) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Image.asset(
            image,
            height: 170,
          ),
          Positioned.fill(
            child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.play_circle_outline,
                  size: 38,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreenUI(context),
    );
  }
}
