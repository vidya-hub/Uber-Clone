import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Screen15 extends StatefulWidget {
  final String title;

  Screen15({this.title});

  @override
  _Screen15State createState() => _Screen15State();
}

class _Screen15State extends State<Screen15> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            child: Card(
              elevation: 10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: isClick == false
                        ? MediaQuery.of(context).size.width * 0.5
                        : MediaQuery.of(context).size.width * 0.97,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: Container(
                          height: MediaQuery.of(context).size.height,
                          child: Image.asset(
                            "images/googl_ED.jpg",
                            fit: BoxFit.cover,
                          )),

                      // GoogleMap(
                      //   // markers: Set.from(allMarkers),
                      //   zoomControlsEnabled: false,
                      //   // onMapCreated: mapCreated,
                      //   initialCameraPosition: CameraPosition(
                      //     target: LatLng(21.170240, 72.831062),
                      //     zoom: 20.0,
                      //   ),
                      // ),
                    ),
                  ),

                  //  GoogleMap(
                  //   // markers: Set.from(allMarkers),
                  //   zoomControlsEnabled: false,
                  //   // onMapCreated: mapCreated,
                  //   initialCameraPosition: CameraPosition(
                  //     target: LatLng(21.170240, 72.831062),
                  //     zoom: 20.0,
                  //   ),
                  // ),
                  // ),
                  isClick == false
                      ? Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text('Trip scheduled at '),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              '25-06-2019',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '12:45 pm',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text(
                                          '( Your Trip will confirmed 15 mins before the scheduled time and will be notified )'),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6.0),
                                      color: Colors.black45,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isClick = true;
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          'More details',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : Text(''),
                ],
              ),
            ),
          ),
          isClick == true
              ? Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'images/Timer.png',
                                scale: 2,
                              ),
                              Text('25-12-2019',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  )),
                              Text('12:45 pm',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('images/location.png'),
                                    Text('No 46,Abc Streat,Saligram,chennai'),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('images/flag.png'),
                                    Text('No 46,Abc Streat,Saligram,chennai'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 11.0,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Image.asset('images/mini select-5.png'),
                              Icon(Icons.directions_bike),
                              Text(
                                'Executive -(Local Trip)',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('images/cash-in-hand.png'),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '\$ 17.8',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '(Above fare is inclusive of Tax/Parking/Toll/waiting charges extra)',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Container(
                          child: Text(
                            '(Above fare is inclusive of Tax/Parking/Toll/waiting charges extra)',
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Card(
                          shadowColor: Colors.black,
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          child: Container(
                            // color: Colors.cyan,
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Cancel Ride",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.close,
                                    size: 35,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Text(''),
        ],
      ),
    );
  }
}
