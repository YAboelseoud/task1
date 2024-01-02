import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/img2.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Hi there!!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.black),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  child: Text(
                    "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                    style: TextStyle(fontSize: 20,color: Colors.black),
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
