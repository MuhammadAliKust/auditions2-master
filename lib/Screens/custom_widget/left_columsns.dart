  import 'package:auditions/Screens/custom_widget/credits_heading.dart';
import 'package:auditions/Screens/custom_widget/credits_text.dart';
import 'package:flutter/material.dart';

Widget buildLeftColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildColumnHeading('Projects:-', context),
        SizedBox(
          height: 5,
        ),
        buildColumnText('Project Implementation', Colors.blue, context),
        SizedBox(
          height: 10,
        ),
        buildColumnHeading('Role', context),
        SizedBox(
          height: 5,
        ),
        buildColumnText('UI Designer', Colors.black, context),
      ],
    );
  }