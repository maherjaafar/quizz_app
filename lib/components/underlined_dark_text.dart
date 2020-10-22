import 'package:flutter/material.dart';

class UnderlinedDarkText extends StatelessWidget {
  const UnderlinedDarkText({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: width * 0.05,
            color: Color(0xff1D2226),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 5.0, top: 4.0),
          height: 3.0,
          width: width / 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Color(0xff050B33),
          ),
        ),
      ],
    );
  }
}
