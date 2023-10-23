import 'package:flutter/material.dart';

class TabChips extends StatefulWidget {
  const TabChips({super.key});

  @override
  State<StatefulWidget> createState() => _TabChipsState();
}

class _TabChipsState extends State<TabChips> {
  int _selectedIndex = 0;
  List<String> titles = [
    "الآن",
    "قريبًا",
  ];
  double chipSpacing = 3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        children: List.generate(
          titles.length,
          (index) {
            return Row(
              children: [
                ChoiceChip(
                  backgroundColor: const Color.fromARGB(255, 241, 240, 243),
                  selectedColor: const Color.fromARGB(255, 71, 126, 252),
                  selected: _selectedIndex == index,
                  label: Text(titles[index]),
                  onSelected: (selected) {
                    if (selected) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    }
                  },
                ),
                if (index < titles.length - 1) SizedBox(width: chipSpacing),
              ],
            );
          },
        ),
      ),
    );
  }
}
