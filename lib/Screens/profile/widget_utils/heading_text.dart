import 'package:flutter/material.dart';

Widget buildHeadingText(BuildContext context, String text,
    {Color color = const Color(0xff0073B2)}) {
  return Text(
    text,
    style: Theme.of(context).textTheme.headline6.merge(TextStyle(color: color)),
  );
}
