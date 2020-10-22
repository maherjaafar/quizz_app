import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/screens/question_screen.dart';

class QuizResponseItemWithText extends StatelessWidget {
  const QuizResponseItemWithText({
    Key key,
    @required this.color1,
    this.title,
  }) : super(key: key);

  final Color color1;
  final String title;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double height = screenSize.height;
    double width = screenSize.width;

    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: width / 10),
        height: height / 17,
        width: width / 1.2,
        decoration: BoxDecoration(
          color: color1,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(
          title,
          style: GoogleFonts.quicksand(
            fontSize: height / 34,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
