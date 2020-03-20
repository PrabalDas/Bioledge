import 'dart:async';
import 'package:bioledge_app/Pages/LoginPage.dart';
import 'package:flutter/material.dart';
import 'Pages/SplashScreenPage.dart';
import 'animation/fade_animation.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
     
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 @override
  void initState() {
    Timer( Duration(seconds: 5), () => navigationPage(context));
    super.initState();}

 @override
  Widget build(BuildContext context) {
    return SplashScreenPage();
  }

 }

void navigationPage(context) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
}

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffffffff), Color(0xffffffff)])),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FadeAnimation(
                  1.2,
                  Container(
                    height: 279,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text('Bioledge App',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 39,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        Center(
                          child: Text('Home HealthCare Services',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.italic)),
                        )
                      ],
                    ),
                  ),
                ),
                FadeAnimation(
                  1.5,
                  Container(
                    child: Center(
                      child: Image.asset(
                        'assets/images/images (1).jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ]),
        )
      ],
    ));

    
  }

