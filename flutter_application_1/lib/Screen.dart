import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: const BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: const Text(
              "Choose Products",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: "Amet minim mollit non deserunt ullamco est sit alique dolor do amet sint, velit officia consequat duis enim enim velit mollit",
            image: Image.asset(
              "images/1.jpg",
              height: 200,
              width: 300, 
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              "Make Payment",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: "Amet minim non deserunt ullamco est sit aliqua dolor do amet sint. velit officia consequat duis enim velit mollit",
            image: Image.asset(
              "images/2.jpg",
              height: 200,
              width: 300,
            ),
          ),
            PageViewModel(
            titleWidget: const Text(
              "Get Your Order",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: "Amet minim non deserunt ullamco est sit aliqua dolor do amet sint. velit officia consequat duis enim velit mollit",
            image: Image.asset(
              "images/3.jpg",
              height: 400,
              width: 300,
            ),
          ),
        ],
        onDone: () {
          Navigator.pushNamed(context, "home");
        },
         next: const Text(
          "Next",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
            color: Color.fromARGB(255, 240, 24, 24),
          ),
        ),
        done: const Text(
          "Get Star",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
            color: Color.fromARGB(255, 240, 24, 24),
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          color: Colors.black26,
          activeColor: Color.fromARGB(255, 15, 15, 15),
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
    
  }
}
