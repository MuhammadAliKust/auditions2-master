import 'package:flutter/material.dart';

Widget buildTitle(BuildContext context, String title) {
    return Container(
      width: 70,
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyText1
            .merge(TextStyle(color: Color(0xffBEBEBE))),
      ),
    );
  }