import 'package:flutter/material.dart';
import 'home_page.dart';
import 'questions_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  // var displayedScreen = const HomePage(Color.fromARGB(255, 51, 26, 119));

  Widget? displayedScreen;

  @override
  void initState() {
    displayedScreen =
         HomePage(changingScreen);
    super.initState();
  }

  void changingScreen() {
    setState(() {
      displayedScreen = const Questions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Container(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 51, 26, 119)),
        child: displayedScreen
        ),
      
          // Questions()

          ),
      //
    );
  }
}
