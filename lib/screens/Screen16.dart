import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/screens/Screen14.dart';
class Screen16 extends StatefulWidget {
  final String title;

  Screen16({this.title});

  @override
  _Screen16State createState() => _Screen16State();
}

class _Screen16State extends State<Screen16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width,
            child: Card(
              elevation: 10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.5,
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
                      )

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
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Trip date & time'),
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
                                child: Column(
                              children: [
                                Text(
                                  'Trip completed',
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                      size: 20.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                      size: 20.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                      size: 20.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                      size: 20.0,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.green,
                                      size: 20.0,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: Colors.black45,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Screen16A()));
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen16A extends StatefulWidget {
  Screen16A({Key key}) : super(key: key);

  @override
  _Screen16AState createState() => _Screen16AState();
}

class _Screen16AState extends State<Screen16A> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Past Trip Details',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios),
          ),
          flexibleSpace: Container(
            decoration: new BoxDecoration(
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
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Card(
                        elevation: 10.0,
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.55,
                                        child: Container(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
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
                                      )

                                      //  GoogleMap(
                                      //   // markers: Set.from(allMarkers),
                                      //   zoomControlsEnabled: false,
                                      //   // onMapCreated: mapCreated,
                                      //   initialCameraPosition: CameraPosition(
                                      //     target: LatLng(21.170240, 72.831062),
                                      //     zoom: 20.0,
                                      //   ),
                                      // ),
                                      ),
                                  Expanded(
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Image.asset('images/car.png'),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text('Sedan - Local Trip'),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.green,
                                                    size: 20.0,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.green,
                                                    size: 20.0,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.green,
                                                    size: 20.0,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.green,
                                                    size: 20.0,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.green,
                                                    size: 20.0,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Trip date &  time',
                                          style: TextStyle(),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                '25-06-2019',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                '12:45 pm',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                    // SizedBox(height: MediaQuery.of(context).size.height * 0.05,),

                                    Container(
                                      child: Text(
                                        'Trip completed',
                                        style: TextStyle(
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Image.asset("images/boy.png"),
                                          Text(
                                            'Ram Kumar',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.27,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 10.0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset('images/cash-in-hand.png'),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Ride fare',
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              ),
                                              Text(
                                                'Toll/Parking charge',
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              ),
                                              Text(
                                                'Add ons charge',
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              ),
                                              Text(
                                                'Tax',
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                '\$ 123',
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              ),
                                              Text(
                                                '\$ 123',
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              ),
                                              Text(
                                                '\$ 123',
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              ),
                                              Text(
                                                '\$ 123',
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Container(
                                          child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                'Total Fare',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'inclusive of Tax',
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  color: Colors.black54,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '\$ 21',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      )),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  'images/location.png',
                                  fit: BoxFit.cover,
                                  height: 22.0,
                                ),
                                Text(
                                  'No. 16, ABC Street,chennai',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  'images/flag.png',
                                  height: 22.0,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'No. 16, ABC Street,chennai',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                    top: 15.0,
                    bottom: 8.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Screen14(),
                              ),
                            );
                          },
                                              child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.black54,
                          ),
                          // color: Colors.black54,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 40.0, right: 30.0, top: 10.0, bottom: 10.0),
                            child: Text(
                              'Details',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.red,
                        ),
                        // color: Colors.black54,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 40.0, right: 30.0, top: 10.0, bottom: 10.0),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
