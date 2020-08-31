import 'package:flutter/material.dart';
import 'package:uber_clone/screens/Screen4.dart';
import 'package:uber_clone/screens/confirmbooking.dart';
import 'package:uber_clone/screens/homepage.dart';

import 'otpenteringpage.dart';

class IntroScreenNav extends StatefulWidget {
  @override
  _IntroScreenNavState createState() => _IntroScreenNavState();
}

class _IntroScreenNavState extends State<IntroScreenNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/bg1.png",
            ),
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
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.only(left: 30, top: 40),
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  PageView(
                    allowImplicitScrolling: true,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.2),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "images/cabs.png",
                                scale: 0.09,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Book Cabs Online",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20),
                                // alignment: Alignment.center,
                                // padding: EdgeInsets.only(top: 30),
                                // width: MediaQuery.of(context).size.width * 0.8,
                                child: Text(
                                    "You can find the required Cabs near you and"),
                              ),
                              Container(
                                // alignment: Alignment.center,
                                // padding: EdgeInsets.only(top: 30),
                                // width: MediaQuery.of(context).size.width * 0.8,
                                child: Text(
                                    "travel to your favourite destination"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.2),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "images/tours.png",
                                  scale: 0.09,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    "Tours and Packages",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 20),
                                  // alignment: Alignment.center,
                                  // padding: EdgeInsets.only(top: 30),
                                  // width: MediaQuery.of(context).size.width * 0.8,
                                  child:
                                      Text("Find your favourite travel spots."),
                                ),
                                Container(
                                  // alignment: Alignment.center,
                                  // padding: EdgeInsets.only(top: 30),
                                  // width: MediaQuery.of(context).size.width * 0.8,
                                  child: Text(
                                      "Select the packages you need and get offers."),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.2),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "images/Earn_money.png",
                                  scale: 0.09,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    "Rewards and Earnings",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 20),
                                  // alignment: Alignment.center,
                                  // padding: EdgeInsets.only(top: 30),
                                  // width: MediaQuery.of(context).size.width * 0.8,
                                  child: Text(
                                      "Make referral asset by referring your friends"),
                                ),
                                Container(
                                  child: Text(
                                      "Earn for each trip made by all your assets."),
                                ),
                                Container(
                                  child: Text(
                                      "Develop your business by promoting."),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.2),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "images/Store.png",
                                  scale: 0.09,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    "Business",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 20),
                                  // alignment: Alignment.center,
                                  // padding: EdgeInsets.only(top: 30),
                                  // width: MediaQuery.of(context).size.width * 0.8,
                                  child: Text(
                                      "Create your own business profiles to sell your "),
                                ),
                                Container(
                                  // alignment: Alignment.center,
                                  // padding: EdgeInsets.only(top: 30),
                                  // width: MediaQuery.of(context).size.width * 0.8,
                                  child: Text(
                                      "products and search to buy the product you need."),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    // alignment: Alignment.bottomRight,
                    height: MediaQuery.of(context).size.height * 0.13,
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 250, bottom: 50, right: 22),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => OtpEntering(),
                          //   ),
                          // );
                        },
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Screen4(),
                              ),
                            );
                          },
                          child: Container(
                            alignment: Alignment.bottomRight,
                            // decoration: BoxDecoration(
                            //     // color: Color.fromRGBO(212, 56, 57, 1),
                            //     border: Border.all(color: Colors.black38),
                            //     borderRadius: BorderRadius.circular(15)),
                            padding: EdgeInsets.only(left: 16),

                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              "VERIFY",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(212, 56, 57, 1),
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
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
