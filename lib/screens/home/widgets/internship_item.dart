import 'package:flutter/material.dart';
import '../../../models/intership.dart';
import '../../../widgets/icon_text.dart';
import '../../../widgets/bookmark.dart';

class InternshipItem extends StatefulWidget {
  final Internship internship;
  final bool showTime;
  const InternshipItem(this.internship, {super.key, this.showTime = false});

  @override
  State<InternshipItem> createState() => _InternshipItemState();
}

class _InternshipItemState extends State<InternshipItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: const EdgeInsets.all(20),
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
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Image.asset(widget.internship.logoURL),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    widget.internship.company,
                    style: const TextStyle(
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
          const SizedBox(height: 15),
          Text(
            widget.internship.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
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
