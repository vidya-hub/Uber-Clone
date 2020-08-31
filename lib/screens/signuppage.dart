import 'package:flutter/material.dart';
import 'package:uber_clone/screens/introScreen.dart';
import 'package:uber_clone/screens/otpenteringpage.dart';

class SignUpPage extends StatelessWidget {
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
            Container(
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
              ),
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
              ),
              child: Text(
                "Enter your Sign Up details !",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 40, right: 22),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.only(left: 16),

                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.83,
                  child: Text(
                    "Enter Your Name",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                  // color: Colors.black,
                  // child: TextField(
                  //   decoration: InputDecoration(
                  //       hintText: "Enter Mobile Number",
                  //       hintStyle: TextStyle(fontSize: 16)),
                  // ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 15, right: 22),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.only(left: 16),

                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.83,
                  child: Text(
                    "Enter Email",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                  // color: Colors.black,
                  // child: TextField(
                  //   decoration: InputDecoration(
                  //       hintText: "Enter Mobile Number",
                  //       hintStyle: TextStyle(fontSize: 16)),
                  // ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        // color: Colors.black,
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(15)),
                    // padding: EdgeInsets.only(top: 30),

                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.14,
                    // color: Colors.black,
                    child: Center(
                      child: Text(
                        "+ 91",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),

                    // TextField(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          // color: Colors.black,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.only(left: 16),
                      margin: EdgeInsets.only(left: 5),
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.58,
                      // color: Colors.black,
                      child: Center(
                          child: Text("Enter Mobile Number",
                              style: TextStyle(fontSize: 16))),

                      // TextField(
                      //   decoration: InputDecoration(
                      //       hintText: "Enter Mobile Number",
                      //       hintStyle: TextStyle(fontSize: 16)),
                      // ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 100, right: 22),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtpEntering(),
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
                  // color: Colors.black,
                  // child: TextField(
                  //   decoration: InputDecoration(
                  //       hintText: "Enter Mobile Number",
                  //       hintStyle: TextStyle(fontSize: 16)),
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
