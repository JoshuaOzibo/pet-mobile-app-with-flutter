import 'package:flutter/material.dart';
import 'package:pet_app/customColors/colors_picker.dart';
import 'package:pet_app/features/select_pet_features/components/gender_select_button.dart';
import 'package:pet_app/features/select_pet_features/components/spayed_select.dart';
import 'package:pet_app/features/select_pet_features/components/toggle_size_button.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios, size: 23, color: Colors.black,),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 20),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircularProgressIndicator(
                    padding: EdgeInsets.all(0),
                    value: 0.7,
                    strokeWidth: 4,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                  ),
                  Text(
                    "2",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // body
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'More about your pet',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 4),
              Text(
                'Help us understand your pet specific need',
                style: TextStyle(),
              ),

              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Text('Breed', style: TextStyle(fontWeight: FontWeight.w500)),
                  TextField(
                    decoration: InputDecoration(
                      hint: Text(
                        'e.g. Golden Retriever, Persian Cat',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 61, 61, 61),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  ToggleSizeButton(),
                  SizedBox(height: 10),
                  GenderSelectButton(),
                  SpayedSelect(),
                  SizedBox(height: 10),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.orangeText,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        padding: EdgeInsets.symmetric(vertical: 16), // height
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/home_page');
                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
