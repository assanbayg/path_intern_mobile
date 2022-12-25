import 'package:flutter/material.dart';
import '../models/intership.dart';
import '../widgets/bookmark.dart';
import '../widgets/icon_text.dart';

class InternshipDetail extends StatelessWidget {
  final Internship internship;
  InternshipDetail(this.internship);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          padding: EdgeInsets.all(25),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          child: Image.asset(internship.logoURL),
                        ),
                        SizedBox(width: 10),
                        Text(
                          internship.company,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Bookmark(internship.isSaved),
                        SizedBox(width: 10),
                        Icon(Icons.more_horiz_outlined),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      internship.title,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(Icons.location_on_outlined, internship.location),
                    IconText(Icons.access_time_outlined, internship.time),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  'Description',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 300,
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.description_outlined,
                        color: Colors.yellow,
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: Text(
                          internship.description,
                          //softWrap: true,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Requirement',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                ...internship.requirements
                    .map((e) => Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 10),
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxWidth: 300,
                                ),
                                child: Text(e,
                                    style: TextStyle(
                                      wordSpacing: 2.5,
                                      height: 1.5,
                                    )),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
                SizedBox(height: 10),
                Text(
                  'Conditions',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                ...internship.conditions
                    .map(
                      (e) => Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 10),
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth: 300,
                              ),
                              child: Text(e,
                                  style: TextStyle(
                                    wordSpacing: 2.5,
                                    height: 1.5,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
                //SizedBox(height: 10),
                // Container(
                //   padding: EdgeInsets.all(15),
                //   decoration: BoxDecoration(
                //     color: Colors.grey.withOpacity(0.2),
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text('Reviews',
                //           style: TextStyle(
                //             fontWeight: FontWeight.bold,
                //           )),
                //       SizedBox(height: 10),
                //       // Container(
                //       //   width: 300,
                //       //   decoration: BoxDecoration(
                //       //       color: Colors.white,
                //       //       borderRadius: BorderRadius.circular(30)),
                //       //   child: TextField(
                //       //     decoration: InputDecoration(),
                //       //   ),
                //       // ),
                //       TextField(
                //         decoration: InputDecoration(
                //           filled: true,
                //           contentPadding: EdgeInsets.all(20),
                //           hintText: 'Write your review',
                //           fillColor: Colors.white,
                //           focusedBorder: OutlineInputBorder(
                //               borderRadius: BorderRadius.circular(30),
                //               borderSide: BorderSide(
                //                   color: Colors.grey.withOpacity(0.3))),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  height: 45,
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Sent!'),
                        ),
                      );
                    },
                    child: Text('Apply Now'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
