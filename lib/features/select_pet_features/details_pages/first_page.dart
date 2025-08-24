import 'package:flutter/material.dart';

class DetailsFirstPage extends StatelessWidget {
  const DetailsFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.backspace_outlined),

        actions: [
          Container(
            padding: const EdgeInsets.only(right: 20),
            child: const Icon(Icons.local_activity_outlined),
          ),
        ],
      ),

      // body
      body: Container(
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
                    color: Colors.amber,
                  ),
                  child: Text(
                    'Part 1',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),

                Container(
                  padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
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
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10),
                Row(
                  spacing: 13,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(255, 241, 241, 241),
                      ),
                      child: Text('Ho'),
                    ),

                    Row(
                      spacing: 5,
                      children: [
                        Icon(Icons.file_copy_outlined, color: Colors.blue),
                        Text('Upload photo'),
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
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    TextField(
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text(
                      'Age',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hoverColor: Colors.amber,
                        hint: Text(
                          'Select age range',
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


                SizedBox(height: 20,),

                // continue button
                ElevatedButton(
                  style: ButtonStyle(
                    
                  ),
                  onPressed: (){}, 
                  child: Text('Continue'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
