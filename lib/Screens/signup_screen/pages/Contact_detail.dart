import 'package:auditions/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Contactdetails extends StatefulWidget {
  @override
  _ContactdetailsState createState() => _ContactdetailsState();
}

class _ContactdetailsState extends State<Contactdetails> {
    String email="";
  String password="";
  String repassword="";
  TextEditingController _email=TextEditingController();
  TextEditingController _password=TextEditingController();
  TextEditingController _repassword=TextEditingController();
   final TextEditingController controller = TextEditingController();
  String initialCountry = 'GB';
  PhoneNumber number = PhoneNumber(isoCode: 'GB');
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("What your contact details?",
                    style: TextStyle(fontSize: 26,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                    SizedBox(height: height/70,),
             Text('Enter your contact details to continue...',style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),

            SizedBox(height: height/20,),
            Container(
                      padding: EdgeInsets.only(top:4,left: 20,right: 20 ),
                      width: width,
                      height: height/15,
                      decoration: BoxDecoration(
                        color: Mycolors.textfieldcolor,
                        border: Border.all(
                          color: Mycolors.bordercolor,
                        ),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: TextFormField(
                          controller: _email,
                          onChanged: (val){
                            this.email=val;
                          },
                          style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                          decoration: InputDecoration(
                           // contentPadding: EdgeInsets.symmetric(vertical: 8),
                          
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          
                            hintText: 'E-maill Address',
                            hintStyle: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor.withAlpha(80))
                            
                          ),
                        ),
                      ),
                    ),
            
            SizedBox(height: height/40,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: width,
            height: height/15,
            decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
            color: Mycolors.textfieldcolor,
            border: Border.all(
              color: Mycolors.bordercolor
            )
            ),
            child: InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                onInputValidated: (bool value) {
                  print(value);
                },
                ignoreBlank: false,
                
                selectorType: PhoneInputSelectorType.DIALOG,
                autoValidate: false,
                hintText: '665 8969 558',
                textStyle: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                selectorTextStyle: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                initialValue: number,
                textFieldController: controller,
                inputBorder: InputBorder.none,
              ),
          ),

          SizedBox(height: height/40,),
                Container(
                      padding: EdgeInsets.only(top:4,left: 20,right: 20 ),
                      width: width,
                      height: height/15,
                      decoration: BoxDecoration(
                        color: Mycolors.textfieldcolor,
                        border: Border.all(
                          color: Mycolors.bordercolor,
                        ),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: TextFormField(
                          obscureText: true,
                          controller: _password,
                          onChanged: (val){
                            this.password=val;
                          },
                          style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                          decoration: InputDecoration(
                           // contentPadding: EdgeInsets.symmetric(vertical: 8),
                          
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          
                            hintText: 'Create Password',
                            hintStyle: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor.withAlpha(80))
                            
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: height/40,),
                Container(
                      padding: EdgeInsets.only(top:4,left: 20,right: 20 ),
                      width: width,
                      height: height/15,
                      decoration: BoxDecoration(
                        color: Mycolors.textfieldcolor,
                        border: Border.all(
                          color: Mycolors.bordercolor,
                        ),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: TextFormField(
                          obscureText: true,
                          controller: _repassword,
                          onChanged: (val){
                            this.password=val;
                          },
                          style: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor),
                          decoration: InputDecoration(
                           // contentPadding: EdgeInsets.symmetric(vertical: 8),
                          
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          
                            hintText: 'Retype Password',
                            hintStyle: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Roman',color: Mycolors.textcolor.withAlpha(80))
                            
                          ),
                        ),
                      ),
                    ),
                      

            
            
                     
        ],
      ),
      
    );
  }
}