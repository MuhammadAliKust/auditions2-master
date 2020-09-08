  import 'package:auditions/Screens/custom_widget/left_columsns.dart';
import 'package:auditions/Screens/custom_widget/right_columns.dart';
import 'package:flutter/material.dart';

Widget buildCreditContainer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffEFEFEF)),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            buildLeftColumn(context),
            buildRightColumn(context)
          ],
        ),
      ),
    );
  }