import 'package:flutter/material.dart';
import 'package:pet_app/features/home/screen/home_screen.dart';
import 'package:pet_app/features/select_pet_features/details_pages/first_page.dart';
import 'package:pet_app/features/select_pet_features/details_pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const  SecondPage(),  // DetailsFirstPage(),
    );
  }
}