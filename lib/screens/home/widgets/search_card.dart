import 'package:flutter/material.dart';
import '../../search/search.dart';

class SearchCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 260,
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 40,
      ),
      margin: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fast Search',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('You can search quickly for\nthe internship you want',
                      style: TextStyle(
                        height: 1.8,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
              Container(
                  height: 80,
                  margin: EdgeInsets.only(left: 30, bottom: 20),
                  child: Image.asset('sun.png')),
            ],
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SearchPage()));
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
