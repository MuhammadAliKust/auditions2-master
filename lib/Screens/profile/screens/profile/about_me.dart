import 'package:auditions/Screens/custom_widget/credits_section.dart';
import 'package:auditions/Screens/profile/widget_utils/heading_text.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  Widget _buildScreenUI(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
      child: ListView(physics: BouncingScrollPhysics(), children: <Widget>[
        buildHeadingText(context, "About Me"),
        SizedBox(
          height: 10,
        ),
        Divider(),
        SizedBox(
          height: 10,
        ),
        _buildDescriptionSection(context),
        SizedBox(
          height: 20,
        ),
        buildHeadingText(context, 'My Personalities', color: Colors.black),
        SizedBox(
          height: 20,
        ),
        _buildPersonalitySection(),
        SizedBox(
          height: 20,
        ),
        buildHeadingText(context, "Short Resmue"),
        SizedBox(
          height: 10,
        ),
        Divider(),
        SizedBox(
          height: 10,
        ),
        _buildDescriptionSection(context),
        SizedBox(
          height: 20,
        ),
        buildHeadingText(context, 'Skills', color: Colors.black),
        SizedBox(
          height: 20,
        ),
        _buildPersonalitySection(),
        SizedBox(
          height: 20,
        ),
        buildHeadingText(context, 'Credits', color: Colors.black),
        SizedBox(
          height: 10,
        ),
        buildCreditContainer(context),
        SizedBox(
          height: 20,
        ),
        buildCreditContainer(context),
      ]),
    );
  }

  Widget _buildDescriptionSection(BuildContext context) {
    return Container(
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.',
        style: TextStyle(color: Color(0xff8E8E8E), height: 1.5),
      ),
    );
  }

  Widget _buildPersonalitySection() {
    return Column(
      children: <Widget>[
        _buildRow("Cheerful", "Achiever", "Cooperative"),
        SizedBox(
          height: 10,
        ),
        _buildRow("Forgiving", "Fashion Hub", "Cooperative"),
      ],
    );
  }

  Widget _buildRow(String text1, String text2, String text3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          color: Color(0xffF7F8FA),
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





 




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: _buildScreenUI(context)),
    );
  }
}
