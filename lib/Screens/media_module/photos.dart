import 'package:auditions/Screens/custom_widget/icons_card.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../config/colors.dart';
import '../../config/colors.dart';
import '../../config/colors.dart';
import '../../config/colors.dart';

class AddPhoto extends StatelessWidget {
  List _images = [
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img3.png',
    'assets/images/img4.png',
    'assets/images/img5.png',
    'assets/images/img6.png',
    'assets/images/img2.png',
    'assets/images/img5.png',
  ];
  Widget _buildScreenUI() {
    return SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 4, crossAxisSpacing: 4),
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return _buildSliverContainer(index, context);
        }));
  }

  Widget _buildAddPhoto() {
    return Container(
      color: Mycolors.bordercolor,
      child: DottedBorder(
          dashPattern: [8],
          borderType: BorderType.values[2],
          color: Color(0xff8E8E8E),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.add_a_photo, size: 28, color: Mycolors.textcolor1),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Add Photo",
                  style: TextStyle(color: Mycolors.textcolor1),
                )
              ],
            ),
          )),
    );
  }

  Widget _buildSliverContainer(int i, BuildContext context) {
    return Container(
      child: _buildSliverGrid(i, context),
      height: 150.0,
    );
  }

  Widget _buildSliverGrid(int i, BuildContext context) {
    if (i < _images.length) {
      return Stack(
        children: <Widget>[
          InkWell(
              onTap: () {
                showDialog(
                    barrierDismissible: false,
                    context: (context),
                    builder: (context) {
                      return _buildDialog(context, _images[i]);
                    });
              },
              child: Image.asset(_images[i])),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Icon(Icons.cancel, color: Colors.white),
              )),
        ],
      );
    } else if (i == _images.length) {
      return _buildAddPhoto();
    } else {
      return null;
    }
  }

  Widget _buildDialog(BuildContext context, String image) {
    return AlertDialog(
        content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildDp(context, image),
        SizedBox(height: 20),
        Text('headshot.jpg'),
        SizedBox(
          height: 10,
        ),
        _buildDetails("Uploaded on : ", "06/06/2019", context),
        SizedBox(
          height: 5,
        ),
        _buildDetails("Dimension : ", "533 x 800", context),
        SizedBox(
          height: 5,
        ),
        _buildDetails("File Size : ", "514 KB", context),
        SizedBox(
          height: 10,
        ),
        _buildButton(context),
        SizedBox(
          height: 20,
        ),
        Center(
            child: InkWell(
          onTap: () => Navigator.pop(context),
          child: Text("Cancel",
              style: TextStyle(
                color: Color(0xffF85C5C),
              )),
        ))
      ],
    ));
  }

  Widget _buildDetails(String title, String subTitle, BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          title,
          style:
              TextStyle(color: Color(0xff8E8E8E), fontWeight: FontWeight.w500),
        ),
        Text(
          subTitle,
          style: TextStyle(
            color: Color(0xff333333),
          ),
        )
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton.icon(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        color: Color(0xff1CA51C),
        onPressed: () {},
        icon: Icon(
          Icons.star,
          color: Colors.white,
        ),
        label: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text("Make Primary Photo",
              style: Theme.of(context)
                  .textTheme
                  .button
                  .merge(TextStyle(color: Colors.white))),
        ),
      ),
    );
  }

  Widget _buildDp(BuildContext context, var img) {
    return Stack(
      children: <Widget>[
        Image.asset(
          img,
          height: 250,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                buildIcon(Icons.delete, Colors.red),
                buildIcon(Icons.remove_red_eye, Colors.red)
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: NeverScrollableScrollPhysics(),
        slivers: <Widget>[
          SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 8),
              sliver: _buildScreenUI()),
        ],
      ),
    );
  }
}
