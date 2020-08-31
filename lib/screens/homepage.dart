import 'package:flutter/material.dart';
import 'package:uber_clone/screens/otpenteringpage.dart';
import 'signuppage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.08,
              // ),
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      "images/logo_bg.png",
                      scale: 2,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.12,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "We Taxi",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "The Best way to navigate and dicover new places",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "Let's get started",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  height: MediaQuery.of(context).size.height * 0.3,
                  // color: Colors.red,
                  child: Column(
                    children: <Widget>[
                      Text("CONTINUE WITH MOBILE"),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.1,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black38),
                                  borderRadius: BorderRadius.circular(15)),
                              // padding: EdgeInsets.only(top: 30),

                              height: MediaQuery.of(context).size.height * 0.07,
                              width: MediaQuery.of(context).size.width * 0.14,
                              // color: Colors.black,
                              child: Center(
                                  child: Text("+91",
                                      style: TextStyle(fontSize: 16))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Container(
                                decoration: BoxDecoration(
                                    // color: Colors.black,
                                    border: Border.all(color: Colors.black38),
                                    borderRadius: BorderRadius.circular(15)),
                                padding: EdgeInsets.only(left: 16),
                                margin: EdgeInsets.only(left: 5),
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
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
                        padding:
                            const EdgeInsets.only(left: 30, top: 15, right: 22),
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
                              "LogIn",
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text("Dont Have account"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 20),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  // padding: EdgeInsets.only(left: 40, right: 20),
                  // color: Color.fromRGBO(212, 56, 57, 1),
                  // height: MediaQuery.of(context).size.height * 0.1,
                  // width: MediaQuery.of(context).size.width * 0.9,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
