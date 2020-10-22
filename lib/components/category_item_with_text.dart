import 'package:flutter/material.dart';

class CategoryItemWithText extends StatelessWidget {
  const CategoryItemWithText({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    double height = screenSize.height;
    double width = screenSize.width;
    return Container(
      height: height * 0.1,
      width: width,
      padding: EdgeInsets.only(left: width / 8),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Color(0xff352E6A),
        border: Border.all(
          color: Color(0xff34288D),
          width: 1.5,
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: height * 0.04,
        ),
      ),
    );
  }
}
