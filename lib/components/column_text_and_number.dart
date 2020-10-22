import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColumnTextAndNumber extends StatelessWidget {
  const ColumnTextAndNumber({
    Key key,
    this.text,
    this.number,
  }) : super(key: key);

  final String text;
  final int number;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double height = screenSize.height;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: GoogleFonts.quicksand(
              color: Colors.white,
            ),
          ),
          SizedBox(height: height / 130),
          Text(
            number.toString(),
            style: GoogleFonts.quicksand(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: height / 30,
            ),
          ),
        ],
      ),
    );
  }
}