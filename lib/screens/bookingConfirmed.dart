import 'package:flutter/material.dart';
import 'package:uber_clone/screens/screen7.dart';
import 'dart:async';



class BookingConfirmed extends StatefulWidget {
  @override
  _BookingConfirmedState createState() => _BookingConfirmedState();
}

class _BookingConfirmedState extends State<BookingConfirmed> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Screen7()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(95, 103, 121, 1),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image.asset(
                  "images/circle.png",
                  scale: 0.8,
                ),
                Image.asset(
                  "images/rightmark.png",
                  scale: 0.9,
                ),
              ],
            ),
            Text(
              "Driver assigned",
              style: TextStyle(
                  fontSize: 30,
                  color: Color.fromRGBO(250, 251, 252, 1),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "successfully... !",
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromRGBO(250, 251, 252, 1),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
