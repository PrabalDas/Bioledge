import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

import 'WelcomePage.dart';

class otpVerificationPage extends StatefulWidget {
  @override
  _otpVerificationPageState createState() => _otpVerificationPageState();
}

class _otpVerificationPageState extends State<otpVerificationPage> {
  String pin = '90858';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 70),
            alignment: Alignment.center,
            child: Text(
              'OTP Verification',
              style: GoogleFonts.montserrat(
                fontSize: 35,
                color: Color(0xff0083f8),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            child: Center(
                child: Text(
              'An OTP has been sent on your mobile Please enter below:',
              style: GoogleFonts.quicksand(fontSize: 20),
            )),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal:
                    10), //* Padding is used to give padding to the horizental sides
            child: PinInputTextField(
              //*Pin input text field is a dependency which is used to give otp UI
              pinLength: 4,
              decoration: BoxLooseDecoration(
                gapSpace: 20,
                enteredColor: Colors.green,
              ),
              controller: null,
              enabled: true,
              autoFocus: true,
              textInputAction: TextInputAction.done,
              onSubmit: (pin) {
                debugPrint('submit pin:$pin');
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Text(
              "Didn't recieve OTP ? ",
              style: GoogleFonts.quicksand(fontSize: 15),
            ),
            alignment: Alignment.center,
          ),
          SizedBox(height: 5),
          Container(
            child: Text(
              "Resend OTP",
              style: GoogleFonts.quicksand(fontSize: 15, color: Colors.blue),
            ),
            alignment: Alignment.center,
          ),
          Expanded(
            //* Expanded is used so that Verify Button can come to bottom
            child: Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => WelcomePage())),                              //* Navigate to Welcome Page    
                child: Container(
                  child: Center(
                    child: Text(
                      'Verify',
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
    );
  }
}
