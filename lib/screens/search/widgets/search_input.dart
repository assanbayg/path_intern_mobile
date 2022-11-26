// import 'package:flutter/material.dart';

// import '../../../models/intership.dart';

// class SearchInput extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(25),
//       child: Row(
//         children: [
//           Expanded(
//             child: TextField(
//               controller: controller,
//               cursorColor: Colors.grey,
//               decoration: InputDecoration(
//                 fillColor: Colors.white,
//                 filled: true,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30),
//                   borderSide: BorderSide.none,
//                 ),
//                 hintText: 'Search',
//                 hintStyle: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 18,
//                 ),
//                 contentPadding: EdgeInsets.zero,
//                 prefixIcon: Container(
//                   padding: EdgeInsets.all(15),
//                   child: Icon(Icons.search),
//                 ),
//               ),
//               onChanged: searchInternship,
//             ),
//           ),
//           SizedBox(width: 10),
//           Container(
//             height: 50,
//             width: 50,
//             padding: EdgeInsets.all(13),
//             decoration: BoxDecoration(
//               color: Theme.of(context).colorScheme.secondary,
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Icon(
//               Icons.filter_alt_outlined,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
