import 'package:flutter/material.dart';
import '../../models/intership.dart';
import '../home/widgets/internship_item.dart';
import 'widgets/search_app_bar.dart';
import 'widgets/search_option.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final controller = TextEditingController();
  final allInternships = Internship.generateInternships();
  List<Internship> internshipList = Internship.generateInternships();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchAppBar(),
              Container(
                margin: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        //SearchInput
                        controller: controller,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Search',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                          contentPadding: EdgeInsets.zero,
                          prefixIcon: Container(
                            padding: const EdgeInsets.all(15),
                            child: const Icon(Icons.search),
                          ),
                        ),
                        onChanged: searchInternship,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SearchOption(),
              Expanded(
                  //SearchList
                  child: Container(
                margin: const EdgeInsets.only(top: 25),
                child: ListView.separated(
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 25,
                      bottom: 25,
                    ),
                    itemBuilder: (context, index) => InternshipItem(
                          internshipList[index],
                          showTime: true,
                        ),
                    separatorBuilder: (_, index) => const SizedBox(height: 20),
                    itemCount: internshipList.length),
              )),
            ],
          ),
        ],
      ),
    );
  }

  void searchInternship(String query) {
    final suggestions = allInternships.where((internship) {
      final internshipTitle = internship.title.toLowerCase();
      final input = query.toLowerCase();

      return internshipTitle.contains(input);
    }).toList();

    setState(() => internshipList = suggestions);
  }
}
