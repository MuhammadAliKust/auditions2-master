
import 'package:auditions/Screens/custom_widget/images.dart';
import 'package:flutter/material.dart';

Widget buildImgRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      SizedBox(
        width: 10,
      ),
      buildImages('assets/images/img1.png'),
      SizedBox(
        width: 10,
      ),
      buildImages('assets/images/img2.png'),
      SizedBox(
        width: 10,
      ),
      buildImages('assets/images/img3.png'),
      SizedBox(
        width: 10,
      ),
    ],
  );
}