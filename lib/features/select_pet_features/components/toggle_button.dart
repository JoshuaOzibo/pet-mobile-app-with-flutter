import 'package:flutter/material.dart';

class CustomToggleButton extends StatefulWidget {
  const CustomToggleButton({super.key});

  @override
  State<CustomToggleButton> createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  int selectedItemIndex = 0;

  Widget customButton({
    required String icon,
    required String text,
    required int index,
  }) {
    bool isSelected = selectedItemIndex == index;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isSelected
              ? const Color.fromARGB(255, 255, 226, 217)
              : Colors.white,
        border: Border.all(
          color: isSelected
              ? Colors.deepOrangeAccent
              : const Color.fromARGB(255, 205, 205, 205),
        ),
      ),
      child: TextButton(
        onPressed: () => {
          setState(() {
            selectedItemIndex = index;
          }),
        },
        child: Row(
          spacing: 5,
          children: [
            Text(icon),
            Text(text, style: TextStyle()),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            customButton(icon: '🐶', text: 'Dog', index: 0),
            customButton(icon: '🐱', text: 'Cat', index: 1),
            customButton(icon: '🐥', text: 'Birds', index: 2),
          ],
        ),

        SizedBox(height: 10,),
        Row(
          children: [
            customButton(icon: '🐠', text: 'Fish', index: 3),
            customButton(icon: '🐍', text: 'Reptile', index: 4),
            customButton(icon: '🐾', text: 'Others', index: 5),
          ],
        ),
      ],
    );
  }
}





































// class CustomTogglePage extends StatefulWidget {
//   @override
//   _CustomTogglePageState createState() => _CustomTogglePageState();
// }

// class _CustomTogglePageState extends State<CustomTogglePage> {
//   int selectedIndex = 0; // keep track of selected button

//   Widget buildToggleButton(String text, int index) {
//     bool isSelected = selectedIndex == index;

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedIndex = index;
//         });
//       },
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//         decoration: BoxDecoration(
//           color: isSelected ? Colors.blue : Colors.white,
//           border: Border.all(
//             color: isSelected ? Colors.blue : Colors.grey,
//             width: 2,
//           ),
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Text(
//           text,
//           style: TextStyle(
//             color: isSelected ? Colors.white : Colors.black,
//             fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             buildToggleButton("Option 1", 0),
//             SizedBox(width: 10),
//             buildToggleButton("Option 2", 1),
//             SizedBox(width: 10),
//             buildToggleButton("Option 3", 2),
//           ],
//         );
//   }
// }