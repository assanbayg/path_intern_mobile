import 'package:flutter/material.dart';
import '../../../models/intership.dart';
import '../../../widgets/icon_text.dart';
import '../../../widgets/bookmark.dart';

class InternshipItem extends StatefulWidget {
  final Internship internship;
  final bool showTime;
  InternshipItem(this.internship, {this.showTime = false});

  @override
  State<InternshipItem> createState() => _InternshipItemState();
}

class _InternshipItemState extends State<InternshipItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
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
                    child: Image.asset(widget.internship.logoURL),
                  ),
                  SizedBox(width: 10),
                  Text(
                    widget.internship.company,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Bookmark(widget.internship.isSaved),
            ],
          ),
          SizedBox(height: 15),
          Text(
            widget.internship.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconText(Icons.location_on_outlined, widget.internship.location),
              if (widget.showTime)
                IconText(Icons.access_time_outlined, widget.internship.time),
            ],
          )
        ],
      ),
    );
  }
}
