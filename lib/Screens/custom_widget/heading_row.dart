  import 'package:auditions/Screens/profile/widget_utils/heading_text.dart';
import 'package:flutter/material.dart';

Widget buildHeadingRow(BuildContext context,
      {String title, String subTitle}) {
    return Row(
      children: <Widget>[buildHeadingText(context, title), Text('($subTitle)')],
    );
  }