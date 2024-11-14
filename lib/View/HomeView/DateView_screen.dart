// import 'package:flutter/material.dart';

// class DateView extends StatelessWidget {
//   final String weekDay;
//   final String date;
//   final bool isSelected;

//   DateView({
//     required this.weekDay,
//     required this.date,
//     required this.isSelected,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(right: 10),
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       decoration: BoxDecoration(
//         color: isSelected ? const Color(0xffFCCD00) : Colors.transparent,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             date,
//             style: TextStyle(
//               color: isSelected ? Colors.black : Colors.white,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             weekDay,
//             style: TextStyle(
//               color: isSelected ? Colors.black : Colors.white,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
