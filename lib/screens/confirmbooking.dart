import 'package:flutter/material.dart';
import 'package:uber_clone/components/fifthscreenheader.dart';
import 'package:uber_clone/screens/profileScreen.dart';
// import 'package:wetaxi/components/scheduleandconfirmbtn.dart';
// import 'package:intl/intl.dart';
import 'bookingConfirmed.dart';

// import 'package:flutter/src/material/pickers/date_picker_dialog.dart':
class ConfirmBooking extends StatefulWidget {
  @override
  _ConfirmBookingState createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {
  // var _selectedDate = "00000";
  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime d = await showDatePicker(
  //     //we wait for the dialog to return
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(2015),
  //     lastDate: DateTime(2020),
  //   );
  //   if (d != null) //if the user has selected a date
  //     setState(() {
  //       // we format the selected date and assign it to the state variable
  //       _selectedDate = DateFormat.yMMMMd("en_US").format(d);
  //     });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          FifthScreenHeader(
            name: "Cab Booking",
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      shadowColor: Colors.black,
                      elevation: 10,
                      child: Container(
                        // color: Colors.cyan,
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Service Type",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "images/car.png",
                                        scale: 0.8,
                                      ),
                                      Text(
                                        "Comfort",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  "Approx.Total Fare",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "including Fare",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w100,
                                      fontSize: 13),
                                ),
                                Text(
                                  "17.5",
                                  style: TextStyle(
                                      shadows: [
                                        BoxShadow(
                                            color:
                                                Color.fromRGBO(212, 56, 57, 1),
                                            blurRadius: 4,
                                            offset: Offset(1, 1),
                                            spreadRadius: 3)
                                      ],
                                      color: Color.fromRGBO(212, 56, 57, 1),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.35,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        shadowColor: Colors.black,
                        elevation: 10,
                        child: Container(
                          // color: Colors.cyan,
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.97,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.033,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.08),
                                    child: Text(
                                      "Add Ons",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[850]),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    // crossAxisAlignment:
                                    // CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CircleAvatar(
                                          radius: 26,
                                          backgroundColor: Colors.grey,
                                          child: CircleAvatar(
                                            radius: 22,
                                            backgroundColor: Colors.white,
                                            foregroundColor: Colors.black,
                                            child: Text(
                                              "None",
                                              style: TextStyle(
                                                  color: Colors.grey[850],
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 26,
                                        backgroundColor: Colors.grey,
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundColor:
                                              Color.fromRGBO(212, 56, 57, 1),
                                          foregroundColor: Colors.white,
                                          child: Icon(Icons.directions_walk),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.03),
                                        child: CircleAvatar(
                                          radius: 26,
                                          backgroundColor: Colors.grey,
                                          child: CircleAvatar(
                                            radius: 22,
                                            backgroundColor: Colors.white,
                                            // foregroundColor: Colors.grey,
                                            child: Icon(
                                              Icons.shopping_cart,
                                              color: Colors.grey[850],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.08,
                                      ),
                                      Column(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.end,
                                        // crossAxisAlignment:
                                        //     CrossAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            "Approx.Total Fare",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "including Fare",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w100,
                                                fontSize: 13),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 18),
                                            child: Text(
                                              "17.5",
                                              style: TextStyle(
                                                  shadows: [
                                                    BoxShadow(
                                                        color: Color.fromRGBO(
                                                            212, 56, 57, 1),
                                                        blurRadius: 4,
                                                        offset: Offset(1, 1),
                                                        spreadRadius: 3)
                                                  ],
                                                  color: Color.fromRGBO(
                                                      212, 56, 57, 1),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // CircleAvatar(),
                                      // CircleAvatar(),
                                    ],
                                  ),
                                  Container(
                                    // padding: EdgeInsets.
                                    // height: MediaQuery.of(context).size.height *
                                    //     0.12,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    // color: Colors.amber,
                                    child: Column(
                                      children: <Widget>[
                                        Divider(
                                          thickness: 1,
                                          color: Colors.black,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Cancellation Charge",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                Text(
                                                  "Cancellation  charge for the your previous ",
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                                Text(
                                                  "booking  UKL2356P is charged extra",
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                )
                                              ],
                                            ),
                                            Text(
                                              "17.5",
                                              style: TextStyle(
                                                  shadows: [
                                                    BoxShadow(
                                                        color: Color.fromRGBO(
                                                            212, 56, 57, 1),
                                                        blurRadius: 4,
                                                        offset: Offset(1, 1),
                                                        spreadRadius: 3)
                                                  ],
                                                  color: Color.fromRGBO(
                                                      212, 56, 57, 1),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.18,
                      child: Card(
                        shadowColor: Colors.black,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          // color: Colors.cyan,
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.97,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, top: 10),
                                child: Text(
                                  "Payment",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[850]),
                                ),
                              ),
                              // Text(""),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 3),
                                        ],
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.black38),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    // padding: EdgeInsets.only(left: 16),

                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text(
                                          "Cash",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey[900],
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Icon(Icons.keyboard_arrow_down)
                                      ],
                                    ),

                                    // color: Colors.black,
                                    // child: TextField(
                                    //   decoration: InputDecoration(
                                    //       hintText: "Enter Mobile Number",
                                    //       hintStyle: TextStyle(fontSize: 16)),
                                    // ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black,
                                                blurRadius: 3),
                                          ],
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.black38),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      // padding: EdgeInsets.only(left: 16),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      child: Text(
                                        "Apply Coupon",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey[900],
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Center(
                                child: Text(
                                  "Above fare is inclusive of Tax. (Parking/Toll/waiting charges extra*)",
                                  style: TextStyle(fontSize: 10),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //     height: MediaQuery.of(context).size.height * 0.012),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Card(
                              shadowColor: Colors.black,
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                // color: Colors.cyan,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Center(child: Text("Date")),
                              ),
                            ),
                            Card(
                              shadowColor: Colors.black,
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                // color: Colors.cyan,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Center(
                                  child: Text("Time"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                // _selectDate(context);
              },
              child: Card(
                color: Colors.grey[200],
                shadowColor: Colors.grey[900],
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Container(
                  // color: Colors.cyan,
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.97,
                  child: Stack(
                    overflow: Overflow.clip,
                    alignment: Alignment.centerRight,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                child: Text(
                                  "Shedule Ride",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BookingConfirmed(),
                                ),
                              );
                            },
                            child: Card(
                              color: Color.fromRGBO(212, 56, 57, 1),
                              shadowColor: Colors.grey[900],
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Container(
                                // color: Colors.cyan,
                                height:
                                    MediaQuery.of(context).size.height * 0.09,
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Center(
                                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Confirm Ride",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      size: 40,
                                      color: Colors.white,
                                    )
                                  ],
                                )),
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
          )
        ],
      ),
    );
  }
}
