import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/screens/Screen15.dart';
import 'package:uber_clone/screens/Screen16.dart';
// import 'package:googlemapsflutter/Screens/Screen15.dart';
// import 'package:googlemapsflutter/Screens/Screen16.dart';

class Screen14 extends StatefulWidget {
  Screen14({Key key}) : super(key: key);

  @override
  _Screen14State createState() => _Screen14State();
}

class _Screen14State extends State<Screen14>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: Icon(Icons.arrow_back_ios, color: Colors.white),
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
          ),
        ],
        title: Text(
          'All trips',
        ),
        centerTitle: true,
        bottom: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          tabs: <Widget>[
            Tab(
              text: 'Upcoming',
            ),
            Tab(
              text: 'Scheduled',
            ),
            Tab(
              text: 'Past',
            ),
          ],
          controller: tabController,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Screen144(
            title: 'First',
          ),
          Screen15(
            title: 'Screen 15',
          ),
          Screen16(
            title: 'Screen 16',
          ),
        ],
        controller: tabController,
      ),
    );
  }
}

class Screen144 extends StatefulWidget {
  final String title;

  const Screen144({this.title});

  @override
  _Screen144State createState() => _Screen144State();
}

class _Screen144State extends State<Screen144> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Driver On the way'),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset("images/boy.png"),
                            ),
                            Text(
                              'NU 20 TMV',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Mini cab - bLack',
                            ),
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.red,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        '5678',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'OTP',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: Colors.green,
                                      size: 25.0,
                                    ),
                                    Text(
                                      'Call Driver',
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
                      ],
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
