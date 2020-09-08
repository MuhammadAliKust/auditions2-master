import 'package:auditions/Screens/custom_widget/build_img_row.dart';
import 'package:auditions/Screens/custom_widget/heading_row.dart';
import 'package:auditions/Screens/custom_widget/images.dart';
import 'package:auditions/Screens/custom_widget/video_widget.dart';
import 'package:auditions/Screens/profile/widget_utils/chew_list.dart';
import 'package:auditions/Screens/profile/widget_utils/heading_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:video_player/video_player.dart';

class Media extends StatefulWidget {
  @override
  _MediaState createState() => _MediaState();
}




final List<String> imgList = [
  'assets/images/img1.png',
  'assets/images/img2.png',
  'assets/images/img3.png',
  'assets/images/img4.png',
];



 Widget _buildVideWidget() {
  return Row(
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          buildVideoThumbnail('assets/images/video1.png'),
          Text("Man in black Givenchy",
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 7,
          ),
          Text(
            'Man in black Givenchy',
            style: TextStyle(color: Color(0xff8E8E8E)),
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          buildVideoThumbnail('assets/images/video2.png'),
          Text("Man in black Givenchy",
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 7,
          ),
          Text(
            'Man in black Givenchy sweat',
            style: TextStyle(color: Color(0xff8E8E8E)),
          )
        ],
      ),
    ],
  );
}

class _MediaState extends State<Media> {
  int _imgcurrent = 0;
  int _vidcurrent = 0;
  VideoPlayerController _videoPlayerController1;
  VideoPlayerController _videoPlayerController2;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController1 = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    _videoPlayerController2 = VideoPlayerController.network(
        'https://www.sample-videos.com/video123/mp4/480/asdasdas.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,
      // Try playing around with some of these other options:

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Column(
              children: <Widget>[
                buildImgRow(),
                SizedBox(
                  height: 5,
                ),
                buildImgRow(),
              ],
            ),
          ))
      .toList();

  final List<Widget> videoSliders = [
    _buildVideWidget(),
    _buildVideWidget(),
    _buildVideWidget(),
    _buildVideWidget(),
    _buildVideWidget(),
    _buildVideWidget(),
  ];

  Widget _buildScreenUI(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          buildHeadingRow(context, title: "Photos", subTitle: "38 Photos"),
          SizedBox(
            height: 20,
          ),
          _buildImageCarusel(),
          // _buildPhotosSection(),
          SizedBox(
            height: 15,
          ),
          _buildDisclaimer(context),
          SizedBox(
            height: 20,
          ),
          buildHeadingRow(context, title: "Videos", subTitle: "10 Videos"),

          _buildVideoSCarusel(),
          SizedBox(
            height: 15,
          ),
          _buildDisclaimer(context),
          SizedBox(
            height: 20,
          ),
          buildHeadingRow(context,
              title: "Favourite Music", subTitle: "10 Music"),
          _buildMusicTile(context, true, 'assets/images/mp31.png'),
          SizedBox(
            height: 5,
          ),
          _buildMusicTile(context, false, 'assets/images/mp32.png'),
          SizedBox(
            height: 5,
          ),
          _buildMusicTile(context, false, 'assets/images/mp33.png'),
          SizedBox(
            height: 15,
          ),
          _buildDisclaimer(context),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }



  Widget _buildDisclaimer(
    BuildContext context,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildDisclaimerHeading(context),
        SizedBox(
          height: 5,
        ),
        _buildDisclaimerText(),
      ],
    );
  }

  Widget _buildDisclaimerHeading(BuildContext context) {
    return Text(
      "Disclaimer : ",
      style: Theme.of(context)
          .textTheme
          .subtitle1
          .merge(TextStyle(color: Color(0xff333333))),
    );
  }

  Widget _buildDisclaimerText() {
    return Text(
        "Explore talent does not guarantee any employment jobsor booking");
  }

  Widget _buildVideoList() {
    return Container(
      height: 240,
      child: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[_buildVideoBox()],
        ),
      ),
    );
  }

  Widget _buildVideoBox() {
    return ChewieListItem(
      videoPlayerController: VideoPlayerController.asset(
        'assets/videos/video.mp4',
      ),
    );
  }

  Widget _buildMusicTile(BuildContext context, bool isPlay, var img) {
    return ListTile(
      isThreeLine: false,
      leading: Image.asset(img),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Toddler walking near river'),
          Row(children: <Widget>[
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
          ]),
        ],
      ),
      subtitle: isPlay
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Man wearing black'),
                SizedBox(
                  height: 5,
                ),
                LinearPercentIndicator(
                    padding: EdgeInsets.all(0),
                    percent: .8,
                    progressColor: Color(0xff014E82)),
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
            )
          : Text('Man wearing black'),
    );
  }

  Widget _buildVideoSCarusel() {
    return Column(children: [
      CarouselSlider(
        items: videoSliders,
        options: CarouselOptions(
            disableCenter: true,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            aspectRatio: 1.7,
            onPageChanged: (index, reason) {
              setState(() {
                _vidcurrent = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: videoSliders.map((url) {
          int index = videoSliders.indexOf(url);
          return _vidcurrent == index
              ? Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff0073B2), width: 2),
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Container(
                    width: 3,
                    height: 3,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      shape: BoxShape.circle,
                      color: Color(0xff0073B2),
                    ),
                  ),
                )
              : Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffEFEFEF),
                  ),
                );
        }).toList(),
      ),
    ]);
  }

  Widget _buildImageCarusel() {
    return Column(children: [
      CarouselSlider(
        items: imageSliders,
        options: CarouselOptions(
            viewportFraction: 1,
            aspectRatio: 1.4,
            onPageChanged: (index, reason) {
              setState(() {
                _imgcurrent = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.map((url) {
          int index = imgList.indexOf(url);
          return _imgcurrent == index
              ? Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff0073B2), width: 2),
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Container(
                    width: 3,
                    height: 3,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      shape: BoxShape.circle,
                      color: Color(0xff0073B2),
                    ),
                  ),
                )
              : Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffEFEFEF),
                  ),
                );
        }).toList(),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _buildScreenUI(context)),
    );
  }
}
