import 'package:flutter/material.dart';
import 'package:pet_app/customColors/colors_picker.dart';
import 'package:pet_app/features/select_pet_features/components/input_selection.dart';
import 'package:pet_app/features/select_pet_features/components/toggle_button.dart';

class DetailsFirstPage extends StatefulWidget {
  const DetailsFirstPage({super.key});

  @override
  State<DetailsFirstPage> createState() => _DetailsFirstPageState();
}

class _DetailsFirstPageState extends State<DetailsFirstPage> {
  TextEditingController petNameController = TextEditingController();
  List<bool> isSelected = [false, false];

  void petName() {
    print('pet name is $petNameController');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.backspace_outlined),

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
                              value: 0.35,
                              strokeWidth: 4,
                              backgroundColor: Colors.grey[300],
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.orange,
                              ),
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
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
              Text(
                'Tell us about your pet',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 4),
              Text(
                'Lets start by selecting what type of pet you have.',
                style: TextStyle(),
              ),

              SizedBox(height: 20),

              Row(
                spacing: 13,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.orangeTranparentBackground,
                    ),
                    child: Text(
                      'Part 1',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: AppColors.orangeText,
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.grayBackground,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.add),
                        Text(
                          'Add Another Pet',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // image section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pet Photo',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10),
                  Row(
                    spacing: 13,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            width: 2,
                            color: AppColors.grayBorder,
                          ),
                          color: AppColors.grayBackground,
                        ),
                        child: Text('🐶', style: TextStyle(fontSize: 25)),
                      ),

                      Row(
                        spacing: 5,
                        children: [
                          Icon(
                            Icons.file_copy_outlined,
                            color: AppColors.orangeText,
                          ),
                          Text(
                            'Upload photo',
                            style: TextStyle(color: AppColors.orangeText),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Text(
                        'Pet Name',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextField(
                        controller: petNameController,
                        decoration: InputDecoration(
                          hoverColor: Colors.amber,
                          hint: Text(
                            'E.g Bella, Max etc',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 61, 61, 61),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  CustomToggleButton(),

                  SizedBox(height: 20),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Text(
                        'Age',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      InputSelection(),
                    ],
                  ),

                  SizedBox(height: 20),

                  // continue button
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
                        Navigator.pushNamed(context, '/second_onbording_page');
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

                  SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
