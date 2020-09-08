import 'package:auditions/Screens/custom_widget/icons_card.dart';
import 'package:auditions/Screens/custom_widget/upload_card.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Audio extends StatelessWidget {
  Widget _buildScreenUI(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          buildUploadSection("Upload New Audio", Icons.headset, context),
          SizedBox(
            height: 20,
          ),
          _buildAudioTrackSection(context,
              isPlay: true,
              isFavourite: true,
              title: "Toddler walking near river",
              subTitle: "Man wearing black",
              percent: 0.8,
              image: "assets/images/mp31.png"),
          SizedBox(
            height: 20,
          ),
          _buildAudioTrackSection(context,
              isPlay: false,
              isFavourite: false,
              title: "Smiling man wearing",
              subTitle: "Man wearing black",
              percent: 0.2,
              image: "assets/images/mp32.png")
        ],
      ),
    );
  }

  Widget _buildAudioTrackSection(BuildContext context,
      {bool isPlay,
      bool isFavourite,
      String title,
      String subTitle,
      double percent,
      var image}) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
              leading: Image.asset(image),
              title: Text(title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(subTitle),
                  SizedBox(
                    height: 5,
                  ),
                  LinearPercentIndicator(
                    padding: EdgeInsets.all(0),
                      percent: percent, progressColor: Color(0xff014E82)),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '00:20 Min',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Text('10:20 Min',
                          style: Theme.of(context).textTheme.caption)
                    ],
                  )
                ],
              )),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.skip_previous, color: Color(0xff014E82)),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                      !isPlay
                          ? Icons.play_circle_outline
                          : Icons.pause_circle_outline,
                      size: 30,
                      color: Color(0xff014E82)),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.skip_next,
                    color: Color(0xff014E82),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  buildIcon(Icons.edit, Color(0xff0073B2)),
                  buildIcon(!isFavourite ? Icons.star_border : Icons.star,
                      Color(0xff1CA51C)),
                  buildIcon(Icons.delete, Color(0xffF85C5C)),
                  buildIcon(Mdi.eyeOff, Color(0xff8E8E8E)),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
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
