import 'package:auditions/Screens/profile/widget_utils/heading_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class SpecialSkill extends StatelessWidget {
  Widget _buildScreenUI(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          buildHeadingText(context, 'Special Skills'),
          SizedBox(
            height: 20,
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          _buildLanguageRow(context),
          SizedBox(
            height: 30,
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          buildHeadingText(context, 'Accents', color: Colors.black),
          SizedBox(
            height: 20,
          ),
          _buildAccentSection(),
          SizedBox(
            height: 20,
          ),
          buildHeadingText(context, 'Musical Instruments', color: Colors.black),
          SizedBox(
            height: 20,
          ),
          _buildMusicalInstrumentSection(),
          SizedBox(
            height: 20,
          ),
          buildHeadingText(context, 'Representation'),
          SizedBox(
            height: 20,
          ),
          _buildAddSection(context, "Add New Representation"),
          SizedBox(
            height: 20,
          ),
          buildHeadingText(context, 'Education & Training'),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          _buildAddSection(context, "Add Education & Training"),
          SizedBox(
            height: 20,
          ),
          buildHeadingText(context, 'License & Passport'),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          _buildAddSection(context, "Add License & Passport"),
        ],
      ),
    );
  }

  Widget _buildLanguageRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildLangBox(context,
              title: "First Language : ",
              image: "assets/images/flag1.png",
              langName: "English"),
          _buildLangBox(context,
              title: "Second Language : ",
              image: "assets/images/flag2.png",
              langName: "France"),
        ],
      ),
    );
  }

  Widget _buildLangBox(BuildContext context,
      {String title, var image, String langName}) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Image.asset(
              image,
              width: 50,
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              langName,
              style: TextStyle(color: Color(0xff8E8E8E)),
            )
          ],
        )
      ],
    );
  }

  Widget _buildAccentSection() {
    return Column(
      children: <Widget>[
        _buildRow("France", "English", "French Canadian"),
        SizedBox(
          height: 10,
        ),
        _buildRow("Ethiopian", "German", "Greek"),
      ],
    );
  }

  Widget _buildMusicalInstrumentSection() {
    return Column(
      children: <Widget>[
        _buildRow("Guitar", "Harmonica", "Saxaphone"),
        SizedBox(
          height: 10,
        ),
        _buildRow("Trombone", "Trumpet", "Harmonium"),
      ],
    );
  }

  Widget _buildRow(String text1, String text2, String text3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _buildPersonalityText(text1),
        SizedBox(
          width: 8,
        ),
        _buildPersonalityText(text2),
        SizedBox(
          width: 8,
        ),
        _buildPersonalityText(text3),
      ],
    );
  }

  _buildPersonalityText(String text) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffEFEFEF)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 11),
          child: Text(
            text,
            style: TextStyle(color: Color(0xff8E8E8E)),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget _buildAddSection(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: DottedBorder(
          dashPattern: [8],
          borderType: BorderType.values[2],
          color: Color(0xff8E8E8E),
          radius: Radius.circular(30),
          child: Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.add_circle_outline,
                  color: Color(0xff8E8E8E),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: TextStyle(color: Color(0xff8E8E8E)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: _buildScreenUI(context)),
    );
  }
}
