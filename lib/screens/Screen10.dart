import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/components/fifthscreenheader.dart';
import 'package:uber_clone/screens/Screen11.dart';

class Screen10 extends StatefulWidget {
  Screen10({Key key}) : super(key: key);

  @override
  _Screen10State createState() => _Screen10State();
}

class _Screen10State extends State<Screen10> {
  String _value;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            FifthScreenHeader(
              name: "Trip Completed",
              // ontap: (){

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
                          'Ride Fare',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        // Icon(Icons.directions_bike),
                        Image.asset('images/mini select-24.png'),
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
                          '\$ 21.4',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          '( inclusive of Tax )',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 35.0,
                        right: 35.0,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Fare Details',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 35.0, right: 35.0, top: 5.0, bottom: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Travel Fare',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text('\$ 13'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 35.0, right: 35.0, top: 5.0, bottom: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Time Fare',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text('\$ 13'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 35.0, right: 35.0, top: 5.0, bottom: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Add on charge',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text('\$ 13'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 35.0, right: 35.0, top: 5.0, bottom: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cancellation Charge added',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text('\$ 13'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 35.0, right: 35.0, top: 5.0, bottom: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tax 5%',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Text('\$ 13'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Payment',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    DropdownButton<String>(
                      items: [
                        DropdownMenuItem<String>(
                          child: Text('Cash'),
                          value: 'one',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('UPI'),
                          value: 'two',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('Netbanking'),
                          value: 'three',
                        ),
                      ],
                      onChanged: (String value) {
                        setState(() {
                          _value = value;
                        });

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Screen11(),
                          ),
                        );
                      },
                      hint: Text('Payment Option'),
                      value: _value,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
