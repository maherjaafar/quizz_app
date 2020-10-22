import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/screens/login.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  var screenSize;
  double height;
  double width;

  int _index = 0;

  String welcomeText(index) {
    if (index == 0)
      return 'Welcome to our quizz application, We thank you for your confidence';
    else if (index == 1)
      return 'Cette application ameliorera votre connaissance tout en vous amusant.';
    else
      return ('Les questions sont tres interessantes et pertinentes. Lancez vous...');
  }

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    height = screenSize.height;
    width = screenSize.width;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/splash.png'),
            fit: BoxFit.fill,
          ),
          color: Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Quiz Pro',
              style: GoogleFonts.quicksand(
                color: Colors.white,
                fontSize: height / 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height / 7),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                welcomeText(_index),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: height / 50,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: height / 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: height / 50,
                  height: height / 50,
                  decoration: BoxDecoration(
                    color: _index == 0 ? Colors.white : Color(0xffE4D4C5),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                SizedBox(width: width / 20),
                Container(
                  width: height / 50,
                  height: height / 50,
                  decoration: BoxDecoration(
                    color: _index == 1 ? Colors.white : Color(0xffE4D4C5),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                SizedBox(width: width / 20),
                Container(
                  width: height / 50,
                  height: height / 50,
                  decoration: BoxDecoration(
                    color: _index == 2 ? Colors.white : Color(0xffE4D4C5),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                SizedBox(
                  height: height / 15,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _index < 2
                          ? setState(() {
                              _index++;
                            })
                          : Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(20.0),
                      height: height / 15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Text(
                        'Commencer',
                        style: GoogleFonts.quicksand(
                          fontSize: height / 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0E0B3F),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height / 20),
          ],
        ),
      ),
    );
  }
}
