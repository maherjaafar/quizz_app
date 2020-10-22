import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/components/category_item_with_text.dart';
import 'package:quizz_app/constants.dart';
import 'package:quizz_app/screens/profile.dart';
import 'package:quizz_app/screens/question_screen.dart';
import 'package:quizz_app/components/column_text_and_number.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  var screenSize;
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    height = screenSize.height;
    width = screenSize.width;

    return Scaffold(
      backgroundColor: Color(0xff050B33),
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(
          Icons.menu,
          size: width * 0.07,
        ),
        backgroundColor: Color(0xff352E6A),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(55.0),
                bottomRight: Radius.circular(55.0))),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Quiz Pro',
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              ),
              child: Container(
                width: width / 12,
                height: width / 12,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Image.asset('assets/avatar.png'),
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
      body: Padding(
        padding: EdgeInsets.fromLTRB(width / 20, 0, width / 20, 0),
        child: Column(
          children: [
            SizedBox(height: height * 0.05),
            Container(
              height: height / 12,
              decoration: BoxDecoration(
                color: Color(0xffFF7F00),
                border: Border.all(
                  color: Color(0xff707070),
                  width: 1.5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnTextAndNumber(
                    text: "Nombre de questions",
                    number: 400,
                  ),
                  Container(
                    color: Colors.white,
                    height: height * 0.065,
                    width: 8.0,
                  ),
                  ColumnTextAndNumber(
                    text: "Votre score",
                    number: 1200,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.07,
            ),
            CategoryItemWithText(
              title: "Art et litterature",
            ),
            SizedBox(height: kDefaultPadding),
            CategoryItemWithText(
              title: "Sciences et nature",
            ),
            SizedBox(height: kDefaultPadding),
            CategoryItemWithText(
              title: "Culture generale",
            ),
            SizedBox(height: kDefaultPadding),
            CategoryItemWithText(
              title: "Technologie",
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuestionScreen()),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                        left: kDefaultPadding,
                        right: kDefaultPadding,
                        bottom: kDefaultPadding,
                        top: kDefaultPadding / 2),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffFF7F00),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text(
                      'Jouer',
                      style: GoogleFonts.quicksand(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
