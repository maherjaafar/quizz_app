import 'package:flutter/material.dart';
import 'package:quizz_app/components/custom_textfield_with_icon.dart';

import 'package:quizz_app/constants.dart';
import 'package:quizz_app/screens/category.dart';

import 'package:quizz_app/components/underlined_dark_text.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var screenSize;
  double height;
  double width;
  bool isConnection = true;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    height = screenSize.height;
    width = screenSize.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: [
          Container(
            child: MyCustomContainer(
              progress: 0.62,
              size: height,
              // backgroundColor: Color(0xff050B33),
              progressColor: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(width / 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: height / 20),
                Text(
                  'quizpro',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.08,
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Padding(
                  padding: EdgeInsets.only(right: width / 15),
                  child: Text(
                    "Veuillez vous connecter ou vous inscrire s'il vous plait pour commencer",
                    style:
                        TextStyle(color: Colors.white, fontSize: width * 0.04),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      height: height * 0.55,
                      margin: EdgeInsets.fromLTRB(
                          kDefaultPadding, 0.0, kDefaultPadding, 0.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 3),
                              blurRadius: 20.0,
                            )
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(height / 23),
                        child: Column(
                          children: [
                            isConnection
                                ? Row(
                                    children: [
                                      UnderlinedDarkText(text: "Connexion"),
                                      SizedBox(
                                        width: width / 20,
                                      ),
                                      buildNotUnderlinedLightText(
                                          "Inscription"),
                                    ],
                                  )
                                : Row(
                                    children: [
                                      buildNotUnderlinedLightText("Connexion"),
                                      SizedBox(
                                        width: width / 20,
                                      ),
                                      UnderlinedDarkText(text: "Inscription"),
                                    ],
                                  ),
                            if (!isConnection) Spacer(),
                            if (!isConnection)
                              CustomTextFieldWithIcon(
                                label: "Nom complet",
                                icon: Icon(Icons.person),
                              ),
                            isConnection
                                ? Spacer()
                                : SizedBox(height: kDefaultPadding / 2),
                            CustomTextFieldWithIcon(
                              label: "Adresse email",
                              icon: Icon(Icons.email),
                            ),
                            SizedBox(height: kDefaultPadding / 2),
                            CustomTextFieldWithIcon(
                              label: "Mot de passe",
                              icon: Icon(Icons.lock),
                            ),
                            Spacer(),
                            RichTextPrivacyAndPolicy(height: height),
                          ],
                        ),
                      ),
                    ),
                    GradientButtonWithIcon(height: height),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Container(
                  height: height / 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15.0),
                        height: height / 16,
                        width: height / 16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 10.0,
                            )
                          ],
                        ),
                        child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_"G"_Logo.svg/1004px-Google_"G"_Logo.svg.png'),
                      ),
                      SizedBox(width: width / 30),
                      Container(
                        padding: EdgeInsets.all(15.0),
                        height: height / 16,
                        width: height / 16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 10.0,
                            )
                          ],
                        ),
                        child: Image.asset('assets/facebookicon.png'),
                      ),
                      SizedBox(width: width / 30),
                      Container(
                        padding: EdgeInsets.all(15.0),
                        height: height / 16,
                        width: height / 16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 10.0,
                            )
                          ],
                        ),
                        child: Image.asset('assets/twittericon.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column buildNotUnderlinedLightText(title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isConnection = !isConnection;
            });
          },
          child: Text(
            title,
            style: TextStyle(
              fontSize: width * 0.05,
              color: Color(0xffD2D3D4),
            ),
          ),
        ),
        Container(
          height: 8.0,
        ),
      ],
    );
  }
}

class GradientButtonWithIcon extends StatelessWidget {
  const GradientButtonWithIcon({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -25,
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: height * 0.07,
              width: height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoryPage())),
              child: Container(
                height: height * 0.058,
                width: height * 0.058,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors: [
                      Color(0xff352E6A),
                      Color(0xff0E0B3F),
                      Color(0xff050B33),
                    ],
                  ),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RichTextPrivacyAndPolicy extends StatelessWidget {
  const RichTextPrivacyAndPolicy({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          fontSize: height / 50,
          color: Color(0xff8A9EAD),
        ),
        children: [
          TextSpan(text: "En cliquant sur “soumettre” vous acceptez nos "),
          TextSpan(
            text: "termes & conditions",
            style: TextStyle(
              color: Color(0xff050B33),
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomContainer extends StatelessWidget {
  final LinearGradient backgroundColor;
  final Color progressColor;
  final double progress;
  final double size;

  const MyCustomContainer({
    Key key,
    this.backgroundColor = const LinearGradient(
      colors: [
        Color(0xff050B33),
        Color(0xff0E0B3F),
        Color(0xff352E6A),
      ],
      begin: Alignment.topCenter,
    ),
    this.progressColor = Colors.red,
    @required this.progress,
    @required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      //borderRadius: BorderRadius.circular(size / 2),
      child: SizedBox(
        height: size,
        width: size,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(gradient: backgroundColor),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size * progress,
                color: progressColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
