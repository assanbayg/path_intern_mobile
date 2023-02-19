import 'package:flutter/material.dart';

class SearchOption extends StatefulWidget {
  const SearchOption({super.key});

  @override
  State<SearchOption> createState() => _SearchOptionState();
}

class _SearchOptionState extends State<SearchOption> {
  final optionMap = <String, bool>{
    'Education': true,
    'Development': false,
    'Business': false,
    'Design': false,
    'Cooking': false,
  };
  @override
  Widget build(BuildContext context) {
    var keys = optionMap.keys.toList();
    return SizedBox(
      height: 25,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              var res = optionMap[keys[index]] ?? false;
              optionMap[keys[index]] = !res;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: optionMap[keys[index]] == true
                  ? Theme.of(context).primaryColor
                  : Colors.white,
              border: Border.all(
                color: optionMap[keys[index]] == true
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).primaryColor.withOpacity(0.5),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Text(
                  keys[index],
                  style: TextStyle(
                    fontSize: 12,
                    color: optionMap[keys[index]] == true &&
                            optionMap[keys[index]] != null
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                if (optionMap[keys[index]] == true &&
                    optionMap[keys[index]] != null)
                  Row(
                    children: const [
                      SizedBox(width: 10),
                      Icon(
                        Icons.close,
                        size: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(width: 10),
        itemCount: optionMap.length,
      ),
    );
  }
}
