import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Who are you?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.black),
              ),
            ),
            SizedBox(height: 15),
            Container(
              child: Text(
                "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                style: TextStyle(fontSize: 15,color: Colors.black),
              ),
            ),
            SizedBox(height: 15),
            // Add a text box (TextField) here
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
                  ),
                  labelText: 'Enter your name',
                ),
              ),
            ),
          ],
        ),
        ),
    );
  }
}