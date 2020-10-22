import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScorePage extends StatefulWidget {
  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
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
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20.0),
                child: Text(
                  '',
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold, fontSize: 40.0),
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
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(
              horizontal: width / 10, vertical: height / 10),
          decoration: BoxDecoration(
            color: Color(0xffD3D3D3),
            borderRadius: BorderRadius.circular(35.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Felicitations!',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: height / 25),
              ),
              SizedBox(
                height: height / 20,
              ),
              Text(
                '90% Score',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: height / 25,
                    color: Color(0xff0BD433)),
              ),
              Text(
                'Quiz complétée avec succès',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: height * 0.025,
                ),
              ),
              SizedBox(height: height * 0.04),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: height / 40,
                  ),
                  children: [
                    TextSpan(text: 'vous essayez '),
                    TextSpan(
                      text: '60 questions ',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        color: Color(0Xff0E2ABB),
                      ),
                    ),
                    TextSpan(text: 'et  '),
                    TextSpan(
                      text: '50 réponses ',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0BD433),
                      ),
                    ),
                    TextSpan(text: 'sont correctes.'),
                  ],
                ),
              ),
              SizedBox(height: height / 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Partagez avec: ',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: height / 45,
                    ),
                  ),
                  Image.asset('assets/instagram.png'),
                  SizedBox(
                    width: 8.0,
                  ),
                  Image.asset('assets/facebook.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
