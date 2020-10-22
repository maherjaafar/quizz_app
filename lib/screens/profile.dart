import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/screens/login.dart';
import 'package:quizz_app/screens/parametres.dart';
import 'package:quizz_app/components/build_appbar_with_text_and_icon.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        text: '',
        icon: Icons.close,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(height / 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: height / 10,
                        backgroundColor: Color(0xff707070),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/profilepic.jpg'),
                          radius: height / 10.2,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Johanna Larsson',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: height / 30,
                    ),
                  ),
                  Text(
                    '400 Points',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: height / 30,
                    ),
                  ),
                  SizedBox(
                    height: height / 30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.people,
                        color: Colors.white,
                        size: height / 30,
                      ),
                      Text(
                        ' Quiz',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: height / 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height / 70,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.map,
                        color: Colors.white,
                        size: height / 30,
                      ),
                      Text(
                        ' Leaderboard',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: height / 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                    width: double.infinity,
                    height: height * 0.06,
                    color: Color(0xff2B3159),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RowWithTextAndIcon(
                          text: 'Parametres',
                          icon: Icons.settings,
                          route: ParametresPage(),
                        ),
                        RowWithTextAndIcon(
                          text: 'Deconnexion',
                          icon: Icons.person_outline,
                          route: LoginPage(),
                        ),
                      ],
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

class RowWithTextAndIcon extends StatelessWidget {
  const RowWithTextAndIcon({
    Key key,
    this.text,
    this.icon,
    this.route,
  }) : super(key: key);

  final String text;
  final icon;
  final route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => route,
          )),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          Text(
            ' $text',
            style: GoogleFonts.montserrat(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
