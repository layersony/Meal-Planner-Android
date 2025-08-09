import 'package:flutter/material.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  _Onboarding1 createState() => _Onboarding1();
}

class _Onboarding1 extends State<Onboarding1> {
  Set<String> selected = {};

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_topimages(), const SizedBox(height: 14), _centerText()],
      ),
    );
  }

  // top images
  Widget _topimages() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Any ingredient\nallergies',
        style: TextStyle(fontWeight: FontWeight.w800, fontSize: 28),
        textAlign: TextAlign.start,
      ),
    );
  }

  // center text
  Widget _centerText() {
    final List<String> ingredients = [
      'Gluten',
      'Dairy',
      'Egg',
      'Soy',
      'Peanut',
      'Wheat',
      'Milk',
      'Fish',
    ];

    // toggle multiple
    void toggleMutliple(List<String> items) {
      setState(() {
        for (var item in items) {
          if (selected.contains(item)) {
            selected.remove(item);
          } else {
            selected.add(item);
          }
        }
      });
    }

    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'To offer you the best tailored diet\nexperience we need to know more\ninformation about you.',
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: ingredients.map((allegren) {
              final bool isSelected = selected.contains(allegren);
              return ChoiceChip(
                label: Text(allegren),
                selected: isSelected,
                onSelected: (bool selectedValue) {
                  toggleMutliple([allegren]);
                },
                selectedColor: Colors.purple,
                backgroundColor: Colors.white,
                labelStyle: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                ),
                avatarBorder: CircleBorder(),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
