import 'package:flutter/material.dart';
import 'package:pet_app/features/select_pet_features/components/toggle_size_button.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: TextButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Icon(Icons.backspace_outlined)),
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
                Text('Pet Name', 
                style: TextStyle(
                  fontWeight: FontWeight.w500)),
                TextField(
                  decoration: InputDecoration(
                    hoverColor: Colors.amber,
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


                SizedBox(height: 20,),
                ToggleSizeButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
