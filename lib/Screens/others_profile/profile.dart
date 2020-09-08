import 'package:auditions/Screens/custom_widget/build_img_row.dart';
import 'package:auditions/Screens/custom_widget/credits_section.dart';
import 'package:auditions/Screens/custom_widget/details_row.dart';
import 'package:auditions/Screens/custom_widget/heading_row.dart';
import 'package:auditions/Screens/custom_widget/video_widget.dart';
import 'package:auditions/Screens/profile/widget_utils/heading_text.dart';
import 'package:auditions/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class OthersProfile extends StatefulWidget {
  @override
  _OthersProfileState createState() => _OthersProfileState();
}

class _OthersProfileState extends State<OthersProfile> {
  Widget _buildScreenUI(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 00),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: <Widget>[
            _buildHeader(),
            SizedBox(height: 20),
            _buildAboutMeText(context),
            SizedBox(
              height: 15,
            ),
            _buildSocialMediaIcons(),
            SizedBox(
              height: 20,
            ),
            buildHeadingRow(context, title: "Photos", subTitle: "38 Photos"),
            SizedBox(
              height: 15,
            ),
            buildImgRow(),
            SizedBox(
              height: 7,
            ),
            buildImgRow(),
            SizedBox(
              height: 7,
            ),
            buildImgRow(),
            SizedBox(
              height: 15,
            ),
            _buildViewMore(context),
            SizedBox(
              height: 20,
            ),
            buildHeadingRow(context, title: "Videos", subTitle: "05 Videos"),
            SizedBox(
              height: 15,
            ),
            _buildVideoRow(),
            SizedBox(
              height: 15,
            ),
            buildHeadingText(context, "Physical Attributes"),
            SizedBox(
              height: 20,
            ),
            _buildDetailsSection(context),
            SizedBox(
              height: 20,
            ),
            buildHeadingText(context, "Credits & Experience"),
            SizedBox(
              height: 20,
            ),
            buildCreditContainer(context),
            SizedBox(
              height: 20,
            ),
            buildCreditContainer(context),
            SizedBox(
              height: 20,
            ),
            buildHeadingText(context, "Acting"),
            SizedBox(
              height: 20,
            ),
            _buildHeading(context, "Acting exprience"),
            SizedBox(
              height: 10,
            ),
            _buildSubHeading(context, "Previous paid speaking roles"),
            SizedBox(
              height: 20,
            ),
            _buildHeading(context, "Modeling agent"),
            SizedBox(
              height: 10,
            ),
            _buildSubHeading(context, "Acting exprience"),
            SizedBox(
              height: 20,
            ),
            _buildHeading(context, "Languages"),
            SizedBox(
              height: 20,
            ),
            _buildBuilletedList(context, "English"),
            SizedBox(
              height: 15,
            ),
            _buildBuilletedList(context, "Dutch"),
            SizedBox(
              height: 20,
            ),
            _buildHeading(context, "Accents"),
            SizedBox(
              height: 20,
            ),
            _buildBuilletedList(context, "USA New York"),
            SizedBox(
              height: 15,
            ),
            _buildBuilletedList(context, "Dutch"),
            SizedBox(
              height: 15,
            ),
            _buildBuilletedList(context, "French"),
            SizedBox(
              height: 15,
            ),
            _buildBuilletedList(context, "Indian"),
            SizedBox(
              height: 15,
            ),
            buildHeadingText(context, "Modeling"),
            SizedBox(
              height: 20,
            ),
            _buildHeading(context, "Modeling exprience"),
            SizedBox(
              height: 10,
            ),
            _buildSubHeading(context, "Beginner, starting out"),
            SizedBox(
              height: 20,
            ),
            _buildHeading(context, "Modeling agent"),
            SizedBox(
              height: 10,
            ),
            _buildSubHeading(context, "SASS Management"),
            SizedBox(
              height: 20,
            ),
            buildHeadingText(context, "Film & Stage Crew"),
            SizedBox(
              height: 20,
            ),
            _buildSubHeading(context, "Directing & Writing ability"),
            SizedBox(
              height: 10,
            ),
            _buildHeading(context, "Expert"),
            SizedBox(
              height: 10,
            ),
            _buildSubHeading(context, "Production & Management ability"),
            SizedBox(
              height: 10,
            ),
            _buildHeading(context, "Expert"),
            SizedBox(
              height: 10,
            ),
            _buildSubHeading(context, "Runner or Assistant ability"),
            SizedBox(
              height: 10,
            ),
            _buildHeading(context, "Expert"),
            SizedBox(
              height: 30,
            ),
            buildHeadingText(context, "Photography"),
            SizedBox(
              height: 20,
            ),
            _buildSubHeading(context, "Photography exprience"),
            SizedBox(
              height: 10,
            ),
            _buildHeading(context, "Amateur photography"),
            SizedBox(
              height: 20,
            ),
            buildHeadingText(context, "Presenting"),
            SizedBox(
              height: 20,
            ),
            _buildHeading(context, "Languages"),
            SizedBox(
              height: 20,
            ),
            _buildBuilletedList(context, "English"),
            SizedBox(
              height: 15,
            ),
            _buildBuilletedList(context, "Dutch"),
            SizedBox(
              height: 20,
            ),
            _buildHeading(context, "Accents"),
            SizedBox(
              height: 20,
            ),
            _buildBuilletedList(context, "USA New York"),
            SizedBox(
              height: 15,
            ),
            _buildBuilletedList(context, "Dutch"),
            SizedBox(
              height: 15,
            ),
            _buildBuilletedList(context, "French"),
            SizedBox(
              height: 15,
            ),
            _buildBuilletedList(context, "Indian"),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            _buildHeaderRow(context),
            SizedBox(height: 20),
            _buildButtonRow(),
            SizedBox(height: 20),
            _buildTabBar()
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderRow(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildDP(),
        SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildHeadingText(context, "Denish Parks"),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
              Icon(Icons.location_on, color: Color(0xff009AFF)),
              Text(
                "Beverly Hills, CA",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .merge(TextStyle(color: Color(0xff009AFF))),
              )
            ]),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 190,
              child: Text(
                  "Actor, Extra, Influencer, Singer, Sound Crew Member, TV Presenter, Radio Presenter"),
            ),
            SizedBox(
              height: 15,
            ),
            _buildFollowerRow(),
          ],
        ),
      ],
    );
  }

  Widget _buildFollowerRow() {
    return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              _buildNumber(context, "450"),
              _buildText(context, "Follower"),
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            children: <Widget>[
              _buildNumber(context, "450"),
              _buildText(context, "Followed"),
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            children: <Widget>[
              _buildNumber(context, "10"),
              _buildText(context, "Casting"),
            ],
          ),
        ]);
  }

  Widget _buildNumber(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline5,
    );
  }

  Widget _buildText(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.caption,
    );
  }

  Widget _buildDP() {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0),
      child: CircleAvatar(
        radius: 65,
        backgroundColor: Colors.blue,
        backgroundImage: AssetImage(
          "assets/images/img1.png",
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBar(
        indicatorColor: Color(0xff014E82),
        labelColor: Color(0xff014E82),
        unselectedLabelColor: Colors.grey,
        tabs: [
          Tab(
              child: Text(
            "All",
          )),
          Tab(
              child: Text(
            "About Me",
          )),
          Tab(
              child: Text(
            "Photos",
          )),
          Tab(
              child: Text(
            "Videos",
          )),
          Tab(
              child: Text(
            "Apperan",
          )),
        ]);
  }

  Widget _buildButtonRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
              color: Color(0xff0073b2),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 17.0),
                child: Text(
                  "Follow",
                  style: Theme.of(context).textTheme.headline6.merge(TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            width: 10,
          ),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            color: Color(0xffE2F3FF),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 17.0),
              child: ImageIcon(
                AssetImage("assets/images/chat.png"),
                color: Color(0xff0073b2),
              ),
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 10,
          ),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            color: Color(0xffE2F3FF),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 17.0),
              child: ImageIcon(
                AssetImage("assets/images/star.png"),
                color: Color(0xff0073b2),
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildAboutMeText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Sonam (or Sonamm as an influencer on Social Media) has worked in numerous creative fields, ranging from Modeling to Acting, Writing to Music, Design to Art with an educational … More",
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            .merge(TextStyle(height: 1.6, color: Mycolors.darkgray)),
      ),
    );
  }

  Widget _buildSocialMediaIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Typicons.social_facebook, color: Color(0xff1976D2)),
        SizedBox(
          width: 10,
        ),
        ImageIcon(
          AssetImage("assets/images/twitter.png"),
          color: Color(0xff03A9F4),
        ),
        SizedBox(
          width: 10,
        ),
        Icon(Mdi.linkedin, color: Color(0xff1976D2)),
      ],
    );
  }

  Widget _buildViewMore(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      buildHeadingText(context, "View More"),
      SizedBox(width: 10,),
      ImageIcon(
        AssetImage("assets/images/ad.png"),
        color: Color(0xff0073B2),
        size: 14,
      )
    ]);
  }

  Widget _buildVideoRow() {
    return Container(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
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
            );
          }),
    );
  }

  Widget _buildDetailsSection(BuildContext context) {
    return Column(
      children: <Widget>[
        buildDetailsRow(
            context: context,
            title1: "Gender",
            subTitle1: "Male",
            title2: "Age",
            subTitle2: "19-45 Years"),
        SizedBox(
          height: 10,
        ),
        buildDetailsRow(
            context: context,
            title1: "Eye Color",
            subTitle1: "Blue",
            title2: "Dress Size",
            subTitle2: "5"),
        SizedBox(
          height: 10,
        ),
        buildDetailsRow(
            context: context,
            title1: "Hair Style",
            subTitle1: "Medium",
            title2: "Hips",
            subTitle2: "33''"),
        SizedBox(
          height: 10,
        ),
        buildDetailsRow(
            context: context,
            title1: "Ethnicities",
            subTitle1: "Caucasian",
            title2: "Waist",
            subTitle2: "33”"),
        SizedBox(
          height: 10,
        ),
        buildDetailsRow(
            context: context,
            title1: "Height",
            subTitle1: "5'11''/180cm",
            title2: "Hair Color",
            subTitle2: "Auburn"),
        SizedBox(
          height: 10,
        ),
        buildDetailsRow(
            context: context,
            title1: "Body Type",
            subTitle1: "Athletic",
            title2: "Shirt",
            subTitle2: "13''")
      ],
    );
  }

  Widget _buildHeading(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            .merge(TextStyle(color: Mycolors.darkgray)),
      ),
    );
  }

  Widget _buildSubHeading(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Text(text, style: Theme.of(context).textTheme.headline6),
    );
  }

  Widget _buildBuilletedList(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Row(
        children: <Widget>[
          _buildBullet(),
          SizedBox(
            width: 10,
          ),
          Text(text),
        ],
      ),
    );
  }

  Widget _buildBullet() {
    return new Container(
      height: 8.0,
      width: 8.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Other Profile",
            style: TextStyle(color: Mycolors.blue),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Mycolors.blue,
          ),
          backgroundColor: Colors.white,
        ),
        body: _buildScreenUI(context),
      ),
    );
  }
}
