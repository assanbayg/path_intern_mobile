// import 'package:flutter/material.dart';
// import '../../../models/intership.dart';
// import '../../home/widgets/internship_item.dart';

// class SearchList extends StatelessWidget {
//   @override
//   final internshipList = Internship.generateInternships();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 25),
//       child: ListView.separated(
//           padding: EdgeInsets.only(
//             left: 25,
//             right: 25,
//             bottom: 25,
//           ),
//           itemBuilder: (context, index) => InternshipItem(
//                 internshipList[index],
//                 showTime: true,
//               ),
//           separatorBuilder: (_, index) => SizedBox(height: 20),
//           itemCount: internshipList.length),
//     );
//   }
// }
