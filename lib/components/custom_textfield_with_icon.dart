import 'package:flutter/material.dart';

class CustomTextFieldWithIcon extends StatelessWidget {
  const CustomTextFieldWithIcon({
    Key key,
    this.label,
    this.icon,
  }) : super(key: key);

  final String label;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double height  = screenSize.height;
    double width = screenSize.width;
    return Theme(
      data: ThemeData(
        primaryColor: Colors.grey,
        primaryColorDark: Colors.grey,
      ),
      child: TextFormField(
        
        decoration: InputDecoration(
          
          prefixIcon: icon,
          labelText: label,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0),
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        validator: (val) {
          if (val.length == 0) {
            return "$label cannot be empty";
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        style: new TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    );
  }
}
