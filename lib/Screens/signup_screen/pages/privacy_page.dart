import 'package:auditions/Screens/signup_screen/pages/custom_package.dart';
import 'package:auditions/config/colors.dart';
import 'package:country_list_pick/support/code_country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Finish Sign-Up",
                      style: TextStyle(fontSize: 30,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                      SizedBox(height: height/70,),
               Text('To complete your registration, please read and accept our terms of use and privacy below',style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),

              SizedBox(height: height/20,),

               Text('Privacy Policy',style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),

              SizedBox(height: height/50,),

               Text('This privacy policy applies to all personal information collected, stored, used and transmitted by Auditions.com (owned and operated by Auditions.com Limited). Auditions.com’s contact information is provided at the end of this privacy policy.',
               style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1),),

              SizedBox(height: height/70,),

              Text('For the purposes of the EU General Data Protection Regulation ("GDPR"), if you are based in the European Union, Auditions.com is both a controller and processor of your personal information.',
               style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1),),

              SizedBox(height: height/70,),

              RichText(text: TextSpan(
                children: [
                  TextSpan(text: 'We may amend this privacy policy at any time by posting ',
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1) ),
                   TextSpan(text: 'the amended policy on our website ',
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.blue) ),
                  TextSpan(text: '("Website"). All amendments to the privacy policy will take effect immediately upon such posting.',
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1) ),

                ]
              )),

              SizedBox(height: height/70,),

              RichText(text: TextSpan(
                children: [
                  TextSpan(text: "Auditions.com's services are described in full in ",
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1) ),
                   TextSpan(text: 'Auditions.com’s terms of use ',
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.blue) ),
                  TextSpan(text: '("Terms of Use"), as updated from time to time.',
                  style:TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1) ),

                ]
              )),


              SizedBox(height: height/20,),

               Text('Privacy of your information',style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor),),

              SizedBox(height: height/50,),

              Text('StarNow collects personal information about you through your use of the services and the Website, including your registration details; and information relating to your use of the Website and the content you access.',
               style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1),),

               SizedBox(height: height/50,),

              Text('If StarNow is unable to collect personal information from you, your use of StarNow’s services may suffer from reduced functionality, and certain features of the service may be disabled.',
               style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1),),

               SizedBox(height: height/50,),

              Text('You agree that StarNow may process your personal information:',
               style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1),),

               SizedBox(height: height/50,),

              Text('as necessary to provide the services to you and otherwise comply with its obligations to you under the Terms of Use. For example:',
               style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1),),

               SizedBox(height: height/50,),

              Text('all personal information that you provide to StarNow for inclusion in your personal profile will be collected and stored on the StarNow Website to enable visitors to the Website and advertisers to view your profile, and your profile will also be accessible from search engines such as Google (unless you have set your profile to Private); and',
               style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1),),

               SizedBox(height: height/50,),

              Text('where you choose to apply for any role advertised through StarNow your contact details and any information entered into your personal profile will be provided to the advertiser (including any photo you have uploaded)',
               style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1),),

               SizedBox(height: height/50,),

              Text('where you have placed a listing or advertisement, any information entered into the listing details will be provided to applicants',
               style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1),),

               SizedBox(height: height/50,),

              Text('where it is necessary for the purposes of a legitimate interest pursued by StarNow, being for ensuring Trust and Safety of users of the service, or StarNow’s internal business purposes (including in connection with any audits, professional advice, research, testing, analytics, fraud prevention, or process and service improvements), to verify your identity, and for contacting you from time to time about your registration, account updates, and promotional information about the StarNow Service and features; where necessary for compliance with a legal obligation to which StarNow is subject. For example, StarNow may disclose your personal information, including your name and contact details, to the relevant authorities, parties and/or the applicable intellectual property right holders (or their representatives) where the law requires or allows us to do so. Your Rights',
               style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Book',color: Mycolors.textcolor1),),



             
              
                       
          ],
        ),
        
      ),
    );
  }
}