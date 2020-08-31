import 'package:flutter/material.dart';
import 'package:uber_clone/screens/CouponsScreen.dart';
import 'package:uber_clone/screens/Screen14.dart';
import 'package:uber_clone/screens/Screen18.dart';
import 'package:uber_clone/screens/Screen19.dart';
import 'package:uber_clone/screens/Screen4.dart';
import 'package:uber_clone/screens/coupancode.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(56, 60, 80, 1).withAlpha(200),
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
              height: MediaQuery.of(context).size.height * 0.33,

              child: Column(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            // bottom: 0,
                            left: MediaQuery.of(context).size.width * 0.73,
                            top: MediaQuery.of(context).size.height * 0.06),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Screen4(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.06,
                                    left: MediaQuery.of(context).size.width *
                                        0.06),
                                child: Container(
                                  // margin: EdgeInsets.only(right: 30),
                                  // alignment: Alignment.cent,
                                  child: Stack(
                                    overflow: Overflow.visible,
                                    children: <Widget>[
                                      Image.asset("images/propic.png"),
                                      Positioned(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.13,
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.08,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10)),
                                              color: Color.fromRGBO(
                                                  58, 204, 225, 1)),
                                          child: Center(
                                              child: Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child:
                                                Image.asset("images/edit.png"),
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.1),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Aurélien Salomon",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.03),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "@email",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(
                                              "@Mobile number",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.09,
                                    left: MediaQuery.of(context).size.width *
                                        0.05),
                                child: Image.asset("images/edit.png",
                                    scale: MediaQuery.of(context).size.width *
                                        0.002),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // new Text(,
              //     style: Theme.of(context).textTheme.display4),
              decoration: new BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10)],
                color: Color.fromRGBO(212, 56, 57, 1),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  image: new AssetImage(
                    'images/buildings.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.height * 0.1),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen14(),
                            ),
                          );
                        },
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceA,
                          children: <Widget>[
                            Icon(
                              Icons.view_headline,
                              color: Colors.white,
                              size: 40,
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.06),
                            Text(
                              "All Trips",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen18(),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // mainAxisAlignment: MainAxisAlignment.spaceA,
                            children: <Widget>[
                              Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 40,
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.07),
                              Expanded(
                                child: Text(
                                  "Emergency number",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceA,
                        children: <Widget>[
                          // Image.asset(
                          //   "images/3.png",
                          //   scale: 0.3,
                          // ),
                          Icon(
                            Icons.collections,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.06),

                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CouponsScreen())),
                            child: Text(
                              "Coupons",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CouponCodes(),
                            ),
                          );
                        },
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Screen19(),
                              ),
                            );
                          },
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceA,
                            children: <Widget>[
                              Icon(
                                Icons.stars,
                                color: Colors.white,
                                size: 40,
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.06),
                              Text(
                                "Refer and Earn",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceA,
                        children: <Widget>[
                          Icon(
                            Icons.people,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.06),
                          Text(
                            "Support",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceA,
                        children: <Widget>[
                          Icon(
                            Icons.info_outline,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.06),
                          Text(
                            "About us",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
