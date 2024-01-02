import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Third.dart';
import 'first.dart';
import 'second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Onboarding(),
    );
  }
}

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}
bool oneLastPage = false;
PageController controller = PageController();

class _OnboardingState extends State<Onboarding> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              First(),
              Second(),
              Third(),
            ],
          ),
          if (_currentPage < 2)
            Positioned(
              top: 20.0,
              right: 20.0,
              child: Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                  onPressed: () {
                    // Skip button pressed
                    controller.animateToPage(2,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  child: Text("Skip"),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30 ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        effect: WormEffect(
                          activeDotColor: Colors.black
                        ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
