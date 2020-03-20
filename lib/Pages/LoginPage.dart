import 'package:bioledge_app/Pages/OtpVerificationPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(padding: EdgeInsets.all(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[                                                 //* Sign In Row  
              Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.sacramento(
                        fontSize: 50, color: Color(0xff0083f8)),
                  )),
              Container(
                height: 200,
                width: 200,
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/images/biolege1.png',                                  //* LOGO
                  alignment: Alignment.topRight,
                ),
                padding: EdgeInsets.all(20),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            padding: EdgeInsets.only(left: 40, top: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Hello!',
              style: GoogleFonts.quicksand(fontSize: 50),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 40, top: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Welcome Service Executive',
              style: GoogleFonts.quicksand(fontSize: 20, color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 40)),
              // Container(
              //   height: 40,
              //   width: 40,
              //   child: Container(
              //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),)
              //   ),
              // ),
              Container(
                height: 65,
                width: 300,
                child: TextField(
                  style: GoogleFonts.montserrat(fontSize: 17),
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(right: 2, left: 2),
                      prefixText: '+91',
                      prefixStyle: GoogleFonts.montserrat(
                          color: Colors.grey, fontSize: 17),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2)),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Color(0xff0083f8),
                      ),
                      hintText: 'Enter Mobile Number',
                      hintStyle: GoogleFonts.montserrat(fontSize: 17),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 40, top: 10),
            height: 40,
            width: MediaQuery.of(context).size.width / 1,
            alignment: Alignment.centerLeft,
            child: Text(
              'A 6 Digit OTP will be sent via SMS to verify your Mobile Number.                                        Tap on the request OTP.',
              style: GoogleFonts.actor(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),

          Expanded(
            //* Expanded is used so that Request OTP Button can come to bottom
            child: Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => otpVerificationPage())),
                child: Container(
                  child: Center(
                    child: Text(
                      'Request OTP',
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

          // BottomAppBar(
          //   elevation: 2,
          //   child: RaisedButton(
          //     color: Color(0xff0083f8),
          //     onPressed: () {},
          //     child: Text(
          //       'Request OTP',
          //       style: GoogleFonts.montserrat(fontSize: 25),
          //     ),
          //   ),
          // )

          // Padding(
          //   padding: EdgeInsets.only(left: 20, top: 20),
          //   child: Placeholder(),
          //   // child: Text(
          //   //   'Hello!',
          //   //   style: GoogleFonts.montserrat(fontSize: 40),
          //   // ),
          // ),
        ],
      ),
    );
  }
}
