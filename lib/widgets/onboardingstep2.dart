import 'package:flutter/material.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({super.key});

  @override
  _Onboarding createState() => _Onboarding();
}

class _Onboarding extends State<Onboarding2> {
  final List<String> selected = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _topSection(),
          const SizedBox(height: 16),
          _middleSection(),
          const SizedBox(height: 16),
          _bottomText(),
        ],
      ),
    );
  }

  // top images
  Widget _topSection() {
    return Text(
      'Do you follow any of \nthese diets?',
      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 28),
    );
  }

  Widget _middleSection() {
    return Text(
      'To offer you the best tailored diet \nexperience we need to know more \ninformation about you.',
      textAlign: TextAlign.start,
    );
  }

  // center text
  Widget _bottomText() {
    final List<String> diets = [
      'None',
      'Vegan',
      'Paleo',
      'Dukan',
      'Atkins',
      'Intermitted Fasting',
    ];

    return Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          SizedBox(height: 16.0),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: diets.map((diet) {
              final bool isSelected = selected.contains(diet);

              return ChoiceChip(
                label: Text(diet),
                selected: isSelected,
                onSelected: (bool isSelected) {
                  setState(() {
                    if (selected.contains(diet)) {
                      selected.remove(diet);
                    } else if (isSelected) {
                      selected.add(diet);
                    }
                  });
                },
                selectedColor: Colors.purple,
                labelStyle: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
