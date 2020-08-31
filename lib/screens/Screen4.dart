import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/screens/confirmbooking.dart';
import 'package:uber_clone/screens/profileScreen.dart';

class Screen4 extends StatefulWidget {
  @override
  State<Screen4> createState() => Screen4State();
}

class Screen4State extends State<Screen4> {
  // List<Marker> allMarkers = [];

  // GoogleMapController _controller;
  // Position _currentPosition;

  // @override
  // void initState() {
  //   super.initState();
  //   allMarkers.add(
  //     Marker(
  //       markerId: MarkerId('myMarker'),
  //       draggable: false,
  //       onTap: () {
  //         print('Marker Tapped');
  //       },
  //       position: LatLng(21.170240, 72.831062),
  //     ),
  //   );

  //   _getCurrentLocation();
  // }

  // _getCurrentLocation() {
  //   final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

  //   geolocator
  //       .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
  //       .then((Position position) {
  //     setState(() {
  //       _currentPosition = position;
  //       print(_currentPosition.latitude);
  //     });
  //   }).catchError((e) {
  //     print(e);
  //   });
  // }

  // void mapCreated(controller) {
  //   setState(() {
  //     _controller = controller;
  //   });
  // }

  // moveToBombay() {
  //   _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
  //     target: LatLng(19.0760, 72.8777),
  //     zoom: 20.0,
  //     bearing: 45.0,
  //     tilt: 45.0,
  //   )));
  // }

  // moveToSurat() {
  //   _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
  //     target: LatLng(_currentPosition.latitude, _currentPosition.longitude),
  //     zoom: 20.0,
  //   )));
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
//      appBar: AppBar(
//        title: Text('Google maps'),
//      ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
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

              Container(
                height: MediaQuery.of(context).size.height,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProfileScreen(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.clear_all,
                                  color: Colors.black,
                                  size: 30.0,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.notifications_none,
                                color: Colors.black,
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Material(
                                  elevation: 15.0,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14.0)),
                                  child: Center(
                                    child: TextField(
                                      // controller: searchController,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        // filled: true,
                                        hintText: 'Go From?',
                                        hintStyle:
                                            TextStyle(color: Colors.black54),
                                        focusColor: Colors.white,
                                        prefixIcon:
                                            Image.asset('images/location.png'),

                                        suffixIcon:
                                            Image.asset('images/heart.png'),
                                        // fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(14.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   height: 10.0,
                              // ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Material(
                                  elevation: 15.0,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14.0)),
                                  child: Center(
                                    child: TextField(
                                      // controller: searchController,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        // filled: true,
                                        hintText: 'Go to?',
                                        hintStyle:
                                            TextStyle(color: Colors.black54),
                                        focusColor: Colors.white,
                                        prefixIcon:
                                            Image.asset('images/flag.png'),
                                        suffixIcon:
                                            Image.asset('images/plus.png'),
                                        // fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(14.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.1,
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            // onTap: moveToSurat,
                            child: Container(
                              // height: 40.0,
                              // width: 40.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white),
                              child: Material(
                                elevation: 10.0,
                                borderRadius: BorderRadius.circular(20.0),
                                child: Icon(
                                  Icons.location_searching,
                                  color: Colors.black,
                                  size: 30.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.12),
                      Container(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width,
                              // height: 130.0,
                              color: Colors.black54,
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: ChocoChips(),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.23,
                      // ),
                    ],
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Comfortable for 4 seater available in 8 mins',
                        ),
                        // SizedBox(
                        //   width: 5.0,
                        // ),
                        Expanded(child: GetFare()),
                        // Expanded(
                        //   child: FlatButton.icon(
                        //       onPressed: null,
                        //       icon: Icon(Icons.arrow_forward_ios),
                        //       label: Text),
                        // ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// bool _selected = false;

class ChocoChips extends StatelessWidget {
  const ChocoChips({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.16,
        // width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        maxRadius: 30.0,
                        backgroundColor: Colors.white70,
                        child: Image.asset("images/car.png"),
                      ),
                      Text(
                        'Comfort',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        foregroundColor: Colors.transparent,
                        backgroundColor: Colors.black,
                        // foregroundColor: Color.fromRGBO(212, 56, 57, 1),
                        maxRadius: 32,
                        child: CircleAvatar(
                          maxRadius: 30.0,
                          backgroundColor: Color.fromRGBO(212, 56, 57, 1),
                          child: Image.asset("images/car.png"),
                        ),
                      ),
                      Text(
                        'Comfort XL',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        foregroundColor: Colors.transparent,
                        backgroundColor: Colors.black,
                        // foregroundColor: Color.fromRGBO(212, 56, 57, 1),
                        maxRadius: 32,
                        child: CircleAvatar(
                          maxRadius: 30.0,
                          backgroundColor: Color.fromRGBO(212, 56, 57, 1),
                          child: Image.asset("images/car.png"),
                        ),
                      ),
                      Text(
                        'Executive',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

        // new Text(,
        //     style: Theme.of(context).textTheme.display4),
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
    );
  }
}

class GetFare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ConfirmBooking(),
          ),
        );
      },
      child: Container(
        child: Card(
          color: Color.fromRGBO(212, 56, 57, 1),
          shadowColor: Colors.grey[900],
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width,
            child: Center(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Get Fare",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                  color: Colors.white,
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
