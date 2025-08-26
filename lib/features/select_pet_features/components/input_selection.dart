import 'package:flutter/material.dart';

class InputSelection extends StatefulWidget {
  @override
  _InputSelectionState createState() => _InputSelectionState();
}

class _InputSelectionState extends State<InputSelection> {
  String? selectedValue; // no default, we'll use hint

  final List<String> options = [
    "0-6 months",
    "6 months - 1 year",
    "1-3 years",
    "3-7 years",
    "7+ years",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(6),
      ),
      child: DropdownButton<String>(
        value: selectedValue,
        isExpanded: true, // makes dropdown fill the width
        underline: SizedBox(), // remove default underline
        hint: Text("Select age range"), 
        items: options.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue;
          });
        },
      ),
    );
  }
}
