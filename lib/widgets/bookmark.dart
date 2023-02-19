import 'package:flutter/material.dart';

class Bookmark extends StatefulWidget {
  bool isSaved;
  Bookmark(this.isSaved, {super.key});
  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isSaved = !widget.isSaved;
        });
      },
      child: Icon(
          widget.isSaved ? Icons.bookmark : Icons.bookmark_outline_outlined,
          color:
              widget.isSaved ? Theme.of(context).primaryColor : Colors.black),
    );
  }
}
