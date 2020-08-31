import 'package:flutter/material.dart';

class FifthScreenHeader extends StatelessWidget {
  var name;
  Function ontap;
  FifthScreenHeader({this.name, this.ontap});
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height * 0.29,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 50),
                child: Row(
                  children: <Widget>[
                    Center(
                      child: Text(
                        "$name",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.05),
                      child: Icon(
                        Icons.notifications_none,
                        size: 40,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.arrow_back,
                      color: Color.fromRGBO(212, 56, 57, 1)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 10),
                  child: Center(
                    child: Text(
                      "Trade center",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "...",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: GestureDetector(
                    onTap: ontap,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.refresh,
                          color: Color.fromRGBO(212, 56, 57, 1)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Center(
                    child: Text(
                      "...",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Center(
                    child: Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )
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
    );
  }
}
