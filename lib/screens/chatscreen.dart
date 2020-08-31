import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.16,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 50),
                      child: Row(
                        children: <Widget>[
                          Center(
                            child: Text(
                              "Chat With Driver",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 70),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Today, 2:30 PM",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "The person who says it cannot be done should not interrupt the person who is doing it.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.76,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(87, 115, 255, 1),
                      // border: Border.all(color: Colors.black38),
                      border: Border.all(
                        color: Colors.white,
                      ),
                      // borderRadius: BorderRadius.circular(20),
                      borderRadius: BorderRadius.circular(15)),
                ),
                Positioned(
                  bottom: 50,
                  left: -20,
                  right: 30,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      // color: Colors.blue,
                      height: MediaQuery.of(context).size.height * 0.054,
                      width: MediaQuery.of(context).size.width * 0.13,
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                              // blurRadius: 1,
                              color: Colors.white,
                              spreadRadius: 0.006)
                        ],
                        // borderRadius: BorderRadius.only(
                        //     bottomLeft: Radius.circular(1),
                        //     bottomRight: Radius.circular(1),
                        //     topLeft: Radius.circular(1),
                        //     topRight: Radius.circular(1)),
                      ),
                      child: Image.asset("images/girl.png"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 20),
            child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "The person who says it cannot be done should not interrupt the person who is doing it.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.76,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(120, 132, 158, 1),
                      // border: Border.all(color: Colors.black38),
                      border: Border.all(
                        color: Colors.white,
                      ),
                      // borderRadius: BorderRadius.circular(20),
                      borderRadius: BorderRadius.circular(15)),
                ),
                Positioned(
                  bottom: 50,
                  left: -20,
                  right: -20,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      // color: Colors.blue,
                      height: MediaQuery.of(context).size.height * 0.054,
                      width: MediaQuery.of(context).size.width * 0.13,
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                              // blurRadius: 1,
                              color: Colors.white,
                              spreadRadius: 0.006)
                        ],
                        // borderRadius: BorderRadius.only(
                        //     bottomLeft: Radius.circular(1),
                        //     bottomRight: Radius.circular(1),
                        //     topLeft: Radius.circular(1),
                        //     topRight: Radius.circular(1)),
                      ),
                      child: Image.asset("images/boy.png"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.45),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                color: Colors.white,
                shadowColor: Colors.black38,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  // color: Colors.cyan,
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.97,
                  child: Stack(
                    overflow: Overflow.clip,
                    alignment: Alignment.centerRight,
                    children: <Widget>[
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Text(
                              "Say Something...",
                              // style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(left: 200),
                              child: Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
