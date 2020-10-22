import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/components/build_appbar_with_text_and_icon.dart';

class ParametresPage extends StatefulWidget {
  @override
  _ParametresPageState createState() => _ParametresPageState();
}

class _ParametresPageState extends State<ParametresPage> {
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
      appBar: buildAppBarWithTextAndIcon(
        width: width,
        text: 'Parametres',
        icon: Icons.menu,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height / 30,
            ),
            Text(
              'Compte',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: width * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            ParameterItemWithIconAndText(
              text: "Mettre à jour l'email",
              icon: Icons.email,
            ),
            SizedBox(height: 10.0),
            ParameterItemWithIconAndText(
              text: "Mettre à jour le mot de passe",
              icon: Icons.lock_outline,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(
                      'Quiz Pro Par Jerome C',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.06,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(
                      'Pineapple Workshop',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.03,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ParameterItemWithIconAndText extends StatelessWidget {
  const ParameterItemWithIconAndText({
    Key key,
    this.text,
    this.icon,
  }) : super(key: key);

  final String text;
  final icon;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double height = screenSize.height;
    return Container(
      width: double.infinity,
      height: height / 10,
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Color(0xff2B3159),
          width: 4.0,
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xff2B3159),
            radius: height / 30,
            child: CircleAvatar(
              backgroundColor: Color(0xff050B33),
              radius: height / 32,
              child: Icon(
                icon,
                color: Colors.white,
                size: height * 0.04,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            text,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: height * 0.022,
            ),
          ),
        ],
      ),
    );
  }
}
