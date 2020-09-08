 import 'package:flutter/material.dart';

Widget buildColumnHeading(String text, BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.caption,
    );
  }