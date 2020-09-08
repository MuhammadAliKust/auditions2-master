import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../config/colors.dart';

Widget buildUploadSection(String title, IconData icon, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
      color: Color(0xffF6F6F6),
      child: DottedBorder(
          dashPattern: [8],
          borderType: BorderType.Rect,
          color: Color(0xff8E8E8E),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(icon, size: 28, color: Mycolors.textcolor1),
                  SizedBox(
                    height: 6,
                  ),
                  Text(title,
                      style: Theme.of(context).textTheme.bodyText1.merge(
                            TextStyle(color: Mycolors.textcolor1),
                          ))
                ],
              ),
            ),
          )),
    ),
  );
}
