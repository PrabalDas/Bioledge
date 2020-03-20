import 'package:bioledge_app/animation/fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color FirstColor = Color(0xff801336);
Color SecondColor = Color(0xffc72c41);

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff0083f8), Color(0xffeafbea)],begin:Alignment(0,50 ),end: Alignment(20,0) ),),
          child: FadeAnimation(
            1.2,
            Container(
              height: 279,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  // Center(
                  //   child: Text('Home Healthcare Service',
                  //       style: GoogleFonts.montserrat(
                  //           fontSize: 15, color: Colors.blueAccent)),
                  // ),
                  // Divider(endIndent: 50,indent: 50,thickness: 1,color: Colors.grey,)
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
