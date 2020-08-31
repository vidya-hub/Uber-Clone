import 'package:flutter/material.dart';
import 'package:uber_clone/components/fifthscreenheader.dart';
import 'package:uber_clone/screens/Screen10.dart';

class Screen9 extends StatefulWidget {
  Screen9({Key key}) : super(key: key);

  @override
  _Screen9State createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            FifthScreenHeader(
              name: "Trip Started",
              // ontap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => Screen9(),
              //     ),
              //   );
              // },
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.18,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Driver Details',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Image.asset('images/car.png'),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Comfort',
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'NU 20 TMV',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          'Mini cab -black',
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/boy.png"),
                        Text(
                          'George',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star_border),
                            Icon(Icons.star_border),
                            Icon(Icons.star_border),
                            Icon(Icons.star_border),
                            Icon(Icons.star_border),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Screen10(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Trip Details',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 5.0),
                          Image.asset('images/sos.png'),
                          SizedBox(height: 5.0),
                          Text(
                            'SOS',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone,
                          size: 40.0,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          'Call Driver',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/message-1.png",
                          scale: 0.7,
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          'Chat',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.purpleAccent,
                          size: 45.0,
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          'Share',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    "images/googl_ED.jpg",
                    fit: BoxFit.contain,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
