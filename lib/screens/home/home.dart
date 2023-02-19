import 'package:flutter/material.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/search_card.dart';
import 'widgets/tag_list.dart';
import 'widgets/internship_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Row(children: [
          Expanded(flex: 2, child: Container()),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey.withOpacity(0.1),
            ),
          ),
        ]),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeAppBar(),
            const SearchCard(),
            const TagList(),
            InternshipList(),
          ],
        )
      ]),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Case',
              icon: Icon(Icons.cases_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Chat',
              icon: Icon(Icons.chat_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Student',
              icon: Icon(Icons.person_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
