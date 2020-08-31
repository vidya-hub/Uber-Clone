import 'package:flutter/material.dart';

class Screen19 extends StatefulWidget {
  Screen19({Key key}) : super(key: key);

  @override
  _Screen19State createState() => _Screen19State();
}

class _Screen19State extends State<Screen19> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Refer and Earn',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios),
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('images/unnamed.png'),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                    'Refer a friend and earn coupon for \n      10% OFF upto \$ 100 on ride'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.red,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                  left: 40.0,
                  right: 40.0,
                ),
                child: Text(
                  'Refer Now',
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
    );
  }
}
