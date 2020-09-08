  import 'package:auditions/Screens/custom_widget/credits_heading.dart';
import 'package:auditions/Screens/custom_widget/credits_text.dart';
import 'package:flutter/material.dart';

Widget buildRightColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildColumnHeading('Director Company Details', context),
        SizedBox(
          height: 5,
        ),
        buildColumnText('Freelancing Work', Colors.black, context),
        SizedBox(
          height: 10,
        ),
        buildColumnHeading('( 12/01/2019 to 20-02-2019 )', context),
      ],
    );
  }