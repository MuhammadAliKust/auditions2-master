import 'package:auditions/Screens/custom_widget/details_row.dart';
import 'package:auditions/Screens/custom_widget/sub_title.dart';
import 'package:auditions/Screens/custom_widget/title.dart';
import 'package:auditions/Screens/profile/widget_utils/heading_text.dart';
import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  Widget _buildScreenUI(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
      child: ListView(children: <Widget>[
        buildHeadingText(context, "Personal Information"),
        SizedBox(
          height: 10,
        ),
        Divider(),
        SizedBox(
          height: 10,
        ),
        _buildDetailsSection(context),
      ]),
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

  

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: _buildScreenUI(context)),
    );
  }
}
