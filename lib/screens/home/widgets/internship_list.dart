import 'package:flutter/material.dart';
import 'package:path_intern_mobile/models/intership.dart';
import '../../internship_detail.dart';
import './internship_item.dart';

class InternshipList extends StatelessWidget {
  final internshipList = Internship.generateInternships();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      height: 160,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        InternshipDetail(internshipList[index])));
              },
              child: InternshipItem(internshipList[index])),
          separatorBuilder: (_, index) => SizedBox(
                width: 15,
              ),
          itemCount: internshipList.length),
    );
  }
}
