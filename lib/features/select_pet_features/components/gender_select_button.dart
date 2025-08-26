import 'package:flutter/material.dart';

class GenderSelectButton extends StatefulWidget {
  const GenderSelectButton({super.key});

  @override
  State<GenderSelectButton> createState() => _GenderSelectButtonState();
}

class _GenderSelectButtonState extends State<GenderSelectButton> {
  int selectedItemIndex = 0;

  final List<Map<String, String>> options = [
    {"text": "Male"},
    {"text": "Female"},
    {"text": "Spayed"},
    {"text": "Neutered"},
  ];

  Widget customButton({
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
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 3,
      children: List.generate(options.length, (index) {
        final item = options[index];
        return customButton(
          text: item["text"]!,
          index: index,
        );
      }),
    );
  }
}
