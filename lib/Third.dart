import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/img1.png'),
            SizedBox(height: 70),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("We'are all set!",
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
                SizedBox(height: 30),
                MaterialButton(
                  onPressed: () {
                    // Add your action when the button is pressed
                    print("Let's Go button pressed!");
                  },
                  child: Text("Let's Go!"),
                  color: Colors.black, // Background color
                  textColor: Colors.white, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Adjust the value as needed
                  ),
                  height: 40.0,
                  minWidth:100.0 ,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}