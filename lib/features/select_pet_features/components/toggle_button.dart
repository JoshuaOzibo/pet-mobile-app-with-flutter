import 'package:flutter/material.dart';

class CustomToggleButton extends StatefulWidget {
  const CustomToggleButton({super.key});

  @override
  State<CustomToggleButton> createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  int selectedItemIndex = 0;

  final List<Map<String, String>> options = [
    {"icon": "🐶", "text": "Dog"},
    {"icon": "🐱", "text": "Cat"},
    {"icon": "🐥", "text": "Birds"},
    {"icon": "🐠", "text": "Fish"},
    {"icon": "🐍", "text": "Reptile"},
    {"icon": "🐾", "text": "Others"},
  ];

  Widget customButton({
    required String icon,
    required String text,
    required int index,
  }) {
    bool isSelected = selectedItemIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItemIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected
              ? const Color.fromARGB(255, 255, 226, 217)
              : Colors.white,
          border: Border.all(
            width: 0.8,
            color: isSelected
                ? Colors.deepOrangeAccent
                : const Color.fromARGB(255, 205, 205, 205),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(icon, style: const TextStyle(fontSize: 20)),
            const SizedBox(width: 6),
            Text(text),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 1.5, 
      children: List.generate(options.length, (index) {
        final item = options[index];
        return customButton(
          icon: item["icon"]!,
          text: item["text"]!,
          index: index,
        );
      }),
    );
  }
}
