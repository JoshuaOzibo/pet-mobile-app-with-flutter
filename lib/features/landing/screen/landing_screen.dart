import 'package:flutter/material.dart';
import 'package:pet_app/customColors/colors_picker.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Center(
    child: Text("Some content here..."),
  ),
  bottomNavigationBar: Padding(
    padding: const EdgeInsets.all(16.0), // spacing from screen edges
    child: SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.orangeText,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/first_onbording_page');
        },
        child: Text(
          'Start Onboarding',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  ),
);

  }
}