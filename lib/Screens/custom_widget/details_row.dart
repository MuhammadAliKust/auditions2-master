import 'package:auditions/Screens/custom_widget/sub_title.dart';
import 'package:auditions/Screens/custom_widget/title.dart';
import 'package:flutter/material.dart';

Widget buildDetailsRow(
      {String title1,
      String subTitle1,
      String title2,
      String subTitle2,
      BuildContext context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        buildTitle(context, title1),
        buildSubTitle(context, subTitle1),
        buildTitle(context, title2),
        buildSubTitle(context, subTitle2),
      ],
    );
  }