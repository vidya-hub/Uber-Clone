import 'package:flutter/material.dart';
import 'package:uber_clone/screens/introScreen.dart';
import 'package:uber_clone/screens/signuppage.dart';

class OtpEntering extends StatefulWidget {
  @override
  _OtpEnteringState createState() => _OtpEnteringState();
}

class _OtpEnteringState extends State<OtpEntering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg1.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.09,
                    left: MediaQuery.of(context).size.width * 0.08),
                alignment: Alignment.topLeft,
                height: MediaQuery.of(context).size.height * 0.13,
                // color: Colors.black,
                child: Icon(
                  Icons.arrow_back,
                  size: 40,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
              ),
              child: Text(
                "Verify Mobile Number",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
              ),
              child: Text(
                "We have send the OTP to 9XXXXXXXX0",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
              ),
              child: Text(
                "Go back to change Number",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.83,
                // color: Color.fromRGBO(212, 56, 57, 1),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.003,
                        width: MediaQuery.of(context).size.width * 0.16,
                        color: Color.fromRGBO(212, 56, 57, 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.003,
                          width: MediaQuery.of(context).size.width * 0.16,
                          color: Color.fromRGBO(212, 56, 57, 1),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.003,
                        width: MediaQuery.of(context).size.width * 0.16,
                        color: Color.fromRGBO(212, 56, 57, 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.003,
                          width: MediaQuery.of(context).size.width * 0.16,
                          color: Color.fromRGBO(212, 56, 57, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: Text(
                    "Not yet received OTP ? ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: Text(
                    " Resend  ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 100, right: 22),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IntroScreenNav(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(212, 56, 57, 1),
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.only(left: 16),
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.83,
                  child: Text(
                    "VERIFY",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
