import 'package:flutter/material.dart';

Widget buildColumnText(String text, Color color, BuildContext context) {
  return Text(
    text,
    style: Theme.of(context).textTheme.bodyText2.merge(TextStyle(color: color)),
  );
}
