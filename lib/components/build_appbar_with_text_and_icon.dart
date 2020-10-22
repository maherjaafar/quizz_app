import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppBarWithTextAndIcon({width, text, icon}) {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0.0,
    // leading: Icon(Icons.menu),
    backgroundColor: Colors.transparent,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 20.0),
            child: Text(
              text,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: width * 0.07),
            ),
          ),
        ),
        InkWell(
          onTap: () => print('appbar icon tapped'),
          child: Container(
            margin: EdgeInsets.only(top: 20.0),
            width: width / 12,
            height: width / 12,
            child: Icon(
              icon,
              size: width * 0.07,
            ),
          ),
        ),
      ],
    ),
  );
}
