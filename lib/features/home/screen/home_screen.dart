import 'package:flutter/material.dart';
import 'package:pet_app/customColors/colors_picker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.heroOrange,
        elevation: 0,
        toolbarHeight: 68,
        leadingWidth: 130,
        leading: Container(
          padding: EdgeInsets.only(left: 15, right: 8),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(227, 233, 98, 31),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Bella',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.expand_more, color: Colors.white, size: 25),
            ],
          ),
        ),

        actions: [
          Container(
            margin: EdgeInsets.all(20),
            width: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Icon(Icons.notifications_outlined, color: Colors.white),
          ),
        ],
      ),

      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: AppColors.heroOrange,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey,
                    // image: DecorationImage(
                    //   // image: AssetImage('assets/images/dog1.png'),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),

                SizedBox(
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bella',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Golden Retriver . 2 years',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 8,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(227, 233, 98, 31),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Text(
                              'Energetic',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(227, 233, 98, 31),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Text(
                              'Vaccinated',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(227, 233, 98, 31),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Text(
                              'Nautered',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
