import 'package:auditions/Screens/signup_screen/pages/custom_package.dart';
import 'package:auditions/config/colors.dart';
import 'package:country_list_pick/support/code_country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';

class Datebirth extends StatefulWidget {
  @override
  _DatebirthState createState() => _DatebirthState();
}

class _DatebirthState extends State<Datebirth> {
  var male=false;
  var female=false;
  DateTime _selectedDate;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("When were you born?",
                    style: TextStyle(fontSize: 30,fontFamily: 'AvenirLTStd-Heavy',color: Mycolors.textcolor),),
                    SizedBox(height: height/70,),
             Text('Select your Birth date to continue...',style: TextStyle(fontSize: 16,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor1),),

            SizedBox(height: height/20,),

            DatePickerWidget(
              looping: true, // default is not looping
              locale: DateTimePickerLocale.en_us,
              firstDate: DateTime(1960),
              lastDate: DateTime(2020),
              initialDate: DateTime(1994),
              dateFormat: "dd-MMMM-yyyy",
              onChange: (DateTime newDate, _) => _selectedDate = newDate,
              pickerTheme: DateTimePickerTheme(
                pickerHeight: 500,
                
                showTitle: false,
               // pickerHeight: 200,
                  itemTextStyle: TextStyle(fontSize: 20,fontFamily: 'AvenirLTStd-Medium',color: Mycolors.textcolor)),
            ),
           
            
            
                     
        ],
      ),
      
    );
  }
}