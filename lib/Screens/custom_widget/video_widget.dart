import 'package:flutter/material.dart';

Widget buildVideoThumbnail(var image) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Stack(
      children: <Widget>[
        Image.asset(
          image,
          height: 190,
          width: 200,
        ),
        Positioned.fill(
            child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 28.0, left: 10),
            child: Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.black54,
                ),
                child: Center(
                    child: Text(
                  "02:00",
                  style: TextStyle(color: Colors.white),
                ))),
          ),
        )),
        Positioned.fill(
          child: Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.play_circle_outline,
                size: 38,
                color: Colors.white,
              )),
        )
      ],
    ),
  );
}