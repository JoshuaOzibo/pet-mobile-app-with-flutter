import 'package:flutter/material.dart';

class InputSelection extends StatefulWidget {
  @override
  _InputSelectionState createState() => _InputSelectionState();
}

class _InputSelectionState extends State<InputSelection> {
  String? selectedValue = "Select age range"; // default value

  final List<String> options = ["0-6 months", "6 months - 1 year", "1-3 years", "3-7 years", "7+ years"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        border: BoxBorder.all(
          color: Colors.black
        )
      ),
      padding: EdgeInsets.all(8),
      child: DropdownButton<String>(
        elevation: 0,
        value: selectedValue,
        items: options.map((String value) {
          return DropdownMenuItem<String>(
            value: value, 
          child: Text(value));
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
      ),
    );
  }
}
