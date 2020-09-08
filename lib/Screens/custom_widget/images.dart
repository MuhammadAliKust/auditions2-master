import 'package:flutter/material.dart';

Widget buildImages(var img) {
  return Expanded(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(img),
    ),
  );
}