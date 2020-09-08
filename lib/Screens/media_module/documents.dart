import 'package:auditions/Screens/custom_widget/icons_card.dart';
import 'package:auditions/Screens/custom_widget/upload_card.dart';
import 'package:dotted_border/dotted_border.dart';
import "package:flutter/material.dart";
import 'package:typicons_flutter/typicons_flutter.dart';
import 'package:mdi/mdi.dart';
import '../../config/colors.dart';

class Documents extends StatelessWidget {
  Widget _buildScreenUI(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Padding(
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
                            ImageIcon(
                              AssetImage("assets/images/add_doc.png"),
                              color: Mycolors.textcolor1,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text("Upload New Document",
                                style:
                                    Theme.of(context).textTheme.bodyText1.merge(
                                          TextStyle(color: Mycolors.textcolor1),
                                        ))
                          ],
                        ),
                      ),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildDocumentCard(
              "Audition File.ZIP", "assets/images/zip.png", true, context),
          SizedBox(
            height: 10,
          ),
          _buildDocumentCard("My Demo Audition Video.GIF",
              "assets/images/gif.png", false, context),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _buildDocumentCard(
      String title, var image, bool isFavourite, BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Image.asset(image),
              title: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .merge(TextStyle(fontWeight: FontWeight.bold)),
              ),
              subtitle: Row(
                children: <Widget>[
                  Text("2.41MB"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("06/06/2019")
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              buildIcon(Icons.file_download, Color(0xff1CA51C)),
              buildIcon(Icons.edit, Color(0xff0073B2)),
              buildIcon(isFavourite ? Icons.star_border : Icons.star,
                  Color(0xff1CA51C)),
              buildIcon(Icons.delete, Color(0xffF85C5C)),
              buildIcon(Mdi.eyeOff, Color(0xff8E8E8E))
            ]),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildScreenUI(context));
  }
}
