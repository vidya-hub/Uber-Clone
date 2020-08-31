// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class SheduleAndConfirmButton extends StatefulWidget {
//   @override
//   _SheduleAndConfirmButtonState createState() =>
//       _SheduleAndConfirmButtonState();
// }

// class _SheduleAndConfirmButtonState extends State<SheduleAndConfirmButton> {
//   var _selectedDate = "00000";
//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime d = await showDatePicker(
//       //we wait for the dialog to return
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2015),
//       lastDate: DateTime(2020),
//     );
//     if (d != null) //if the user has selected a date
//       setState(() {
//         // we format the selected date and assign it to the state variable
//         _selectedDate = DateFormat.yMMMMd("en_US").format(d);
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: GestureDetector(
//         onTap: () {
//           _selectDate(context);
//         },
//         child: Card(
//           color: Colors.grey[200],
//           shadowColor: Colors.grey[900],
//           elevation: 5,
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//           child: Container(
//             // color: Colors.cyan,
//             height: MediaQuery.of(context).size.height * 0.07,
//             width: MediaQuery.of(context).size.width * 0.97,
//             child: Stack(
//               overflow: Overflow.clip,
//               alignment: Alignment.centerRight,
//               children: <Widget>[
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.only(left: 40),
//                       child: Text(
//                         "Shedule Ride",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         print("con");
//                       },
//                       child: Card(
//                         color: Color.fromRGBO(212, 56, 57, 1),
//                         shadowColor: Colors.grey[900],
//                         elevation: 10,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30)),
//                         child: Container(
//                           // color: Colors.cyan,
//                           height: MediaQuery.of(context).size.height * 0.09,
//                           width: MediaQuery.of(context).size.width * 0.5,
//                           child: Center(
//                               child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: <Widget>[
//                               Text(
//                                 "Confirm Ride",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               Icon(
//                                 Icons.keyboard_arrow_right,
//                                 size: 40,
//                                 color: Colors.white,
//                               )
//                             ],
//                           )),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
