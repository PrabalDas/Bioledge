import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,mainAxisSize: MainAxisSize.max,
            //* Column widget is used to place the widgets in column including expanded one
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              Container(
                child: Text(
                  'Welcome',
                  style:
                      GoogleFonts.montserrat(fontSize: 30, color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[200]),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  'Mr Chailex',
                  style:
                      GoogleFonts.montserrat(fontSize: 35, color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 50,
              ),
               Container(
                child: Text(
                  'Your Contribution is very valuable to us!',
                  style:
                      GoogleFonts.montserrat(fontSize: 15, color: Colors.grey),
                ),
              ),
              Expanded(
                //* Expanded is used so that Continue Button can come to bottom
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            WelcomePage())), //* Navigate to Welcome Page
                    child: Container(
                      child: Center(
                        child: Text(
                          'Continue',
                          style: GoogleFonts.averageSans(
                              fontSize: 25, color: Colors.white),
                        ),
                      ),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xff0083f8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
