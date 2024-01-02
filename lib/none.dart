import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  final controller=PageController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom:80),
        child: PageView(
          controller: controller,
          children: [
            Container(
              color: Colors.red,
              child: const Center(child: Text("Page1")),
            ),
            Container(
              color: Colors.teal,
              child: const Center(child: Text("Page2")),
            ),
            Container(
              color: Colors.blue,
              child: const Center(child: Text("Page3")),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              child:const Text("Skip"),
              onPressed: ()=>controller.jumpToPage(2),
            ),
            Center(
              child: SmoothPageIndicator(
                  controller:controller,
                  count:3,
                  effect:WormEffect(
                    spacing:16,
                    dotColor:Colors.black,
                    activeDotColor:Colors.black,
                  ),
                  onDotClicked:(index)=>controller.animateToPage(
                      index,
                      duration:const Duration(milliseconds:500), curve: Curves.easeIn)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
