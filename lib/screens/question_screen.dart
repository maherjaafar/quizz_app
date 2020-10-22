import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/components/quiz_response_item_with_text.dart';
import 'package:quizz_app/constants.dart';
import 'package:quizz_app/screens/score.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var screenSize;

  double width;
  double height;

  Color color1 = Color(0xffD3D3D3);
  Color color2 = Color(0xffD3D3D3);
  Color color3 = Color(0xffD3D3D3);
  Color color4 = Color(0xffD3D3D3);

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    height = screenSize.height;
    width = screenSize.width;

    return Scaffold(
      backgroundColor: Color(0xff050B33),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        // leading: Icon(Icons.menu),
        backgroundColor: Color(0xff352E6A),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Science et Nature',
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold, fontSize: width * 0.07),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              width: width / 12,
              height: width / 12,
              child: Icon(
                Icons.close,
                size: width * 0.1,
              ),
            )
          ],
        ),
        centerTitle: true,
        bottom: PreferredSize(
          child: Container(),
          preferredSize: Size.fromHeight(50.0),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: kDefaultPadding, right: kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Quiz: 60',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: height / 35,
                    ),
                  ),
                  Text(
                    '03:00 min',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: height / 35,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: kDefaultPadding, right: kDefaultPadding),
              child: Container(
                height: 1.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            RichText(
              text: TextSpan(
                  style: TextStyle(
                    fontSize: width * 0.06,
                  ),
                  children: [
                    TextSpan(
                        text:
                            "1- Quelle est l'agence spatiale qui a emmené la premiere femme dans l'espace"),
                  ]),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            QuizResponseItemWithText(color1: color1, title: 'Roscosmos'),
            SizedBox(height: height * 0.03),
            QuizResponseItemWithText(color1: color1, title: 'NASA'),
            SizedBox(height: height * 0.03),
            QuizResponseItemWithText(color1: color1, title: 'ISRO'),
            SizedBox(height: height * 0.03),
            QuizResponseItemWithText(color1: color1, title: 'JAXA'),
            SizedBox(height: height * 0.07),
            Spacer(),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScorePage()),
              ),
              child: Container(
                alignment: Alignment.center,
                height: height / 17,
                width: width / 1.5,
                decoration: BoxDecoration(
                  color: Color(0xffFF7F00),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Text(
                  'Soumettre',
                  style: GoogleFonts.quicksand(
                    fontSize: height / 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            )
          ],
        ),
      ),
    );
  }
}
