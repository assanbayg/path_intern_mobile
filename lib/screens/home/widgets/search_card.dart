import 'package:flutter/material.dart';
import '../../search/search.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 260,
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 40,
      ),
      margin: const EdgeInsets.all(25),
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
                children: const [
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
                  margin: const EdgeInsets.only(left: 30, bottom: 20),
                  child: Image.asset('assets/sun.png')),
            ],
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const SearchPage()));
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Row(
                children: const [
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
