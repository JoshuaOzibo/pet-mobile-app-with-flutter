import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(227, 233, 98, 31),
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

      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 20),
                color: const Color.fromARGB(227, 233, 98, 31),
                child: Column(
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
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/profile_image.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        SizedBox(
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
                                      color: const Color.fromARGB(
                                        227,
                                        233,
                                        98,
                                        31,
                                      ),
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
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 3,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        227,
                                        233,
                                        98,
                                        31,
                                      ),
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
                                      color: const Color.fromARGB(
                                        227,
                                        233,
                                        98,
                                        31,
                                      ),
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

                    Transform.translate(
                      offset: Offset(5, 55),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 0.5, color: Colors.grey),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 30,
                          children: [
                            Column(
                              spacing: 5,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      231,
                                      247,
                                      255,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Icon(Icons.health_and_safety),
                                ),
                                Text(
                                  'Health',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              spacing: 5,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      252,
                                      221,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Icon(Icons.food_bank),
                                ),
                                Text(
                                  'Food',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              spacing: 5,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      229,
                                      255,
                                      243,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Icon(Icons.directions_walk_outlined),
                                ),

                                Text(
                                  'Walk',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              spacing: 5,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      239,
                                      244,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Icon(Icons.dataset),
                                ),

                                Text(
                                  'Events',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Care Score Section
              SizedBox(height: 75),
              Center(
                child: Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 0.5, color: Colors.grey),
                  ),
                  child: Row(
                    spacing: 5,
                    children: [
                      SizedBox(
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
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.orange,
                              ),
                            ),
                            Text(
                              "85%",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Care Score',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Good job! Bella care is 85% complete',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  spacing: 20,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Todays Schedule',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      spacing: 20,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 13,
                              vertical: 20,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 244, 244, 255),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ),
                                      ),
                                      child: Text(
                                        '💊',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ),
                                      ),
                                      child: Text(
                                        '✔️',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 30),

                                Text(
                                  'Todays Schedule',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  '8:00 AM . Completed',
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      91,
                                      91,
                                      91,
                                    ),
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 13,
                              vertical: 20,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 244, 239),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ),
                                      ),
                                      child: Text(
                                        '🥩',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ),
                                      ),
                                      child: Text(
                                        '🦴',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 30),

                                Text(
                                  'Lunch Time',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  '8:00 AM . Nov',
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      91,
                                      91,
                                      91,
                                    ),
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  spacing: 20,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Health Insights',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Details',
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      spacing: 20,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 13,
                              vertical: 20,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 242, 242),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              spacing: 8,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Daily Activity',
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      91,
                                      91,
                                      91,
                                    ),
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  '75%',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                Text(
                                  '100% Healthy',
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      91,
                                      91,
                                      91,
                                    ),
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 13,
                              vertical: 20,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 239, 251),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              spacing: 8,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Weight',
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      91,
                                      91,
                                      91,
                                    ),
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  '28.6 Ibs',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Medium',
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      91,
                                      91,
                                      91,
                                    ),
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
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
        ),
      ),

      // bottom navigation bar
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: WidgetStateProperty.all(
            const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 140, 139, 139),
            ),
          ),
        ),
        child: NavigationBar(
          backgroundColor: Colors.white,
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                size: 33,
                color: Color.fromARGB(255, 140, 139, 139),
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.search,
                size: 33,
                color: Color.fromARGB(255, 140, 139, 139),
              ),
              label: 'Services',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.person_2_outlined,
                size: 33,
                color: Color.fromARGB(255, 140, 139, 139),
              ),
              label: 'Community',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.person,
                size: 33,
                color: Color.fromARGB(255, 140, 139, 139),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
