import 'package:flutter/material.dart';
import 'package:pet_app/customColors/colors_picker.dart';

class ToggleSizeButton extends StatefulWidget {
  const ToggleSizeButton({super.key});

  @override
  State<ToggleSizeButton> createState() => _ToggleSizeButtonState();
}

class _ToggleSizeButtonState extends State<ToggleSizeButton> {
  int selectedItemIndex = 0;

  Widget selectSizeWidget({
    required int index,
    required String size,
    required String weight,
  }) {
    bool isSelected = selectedItemIndex == index;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 5,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(size), Text(weight)],
            ),

            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: isSelected
                      ? AppColors.orangeBorder
                      : AppColors.grayBorder,
                  width: isSelected ? 5 : 2,
                  // color: Colors.deepOrange
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        Column(
          spacing: 12,
          children: [
            selectSizeWidget(index: 0, size: 'Small', weight: 'Under 25 ibs'),
            selectSizeWidget(index: 1, size: 'Medium', weight: '25-60 ibs'),
            selectSizeWidget(index: 2, size: 'Large', weight: '60+ ibs'),
          ],
        ),
      ],
    );
  }
}
