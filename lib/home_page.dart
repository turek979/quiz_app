import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final imagePath = 'assets/png/quiz-logo.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 26, 2, 80),
              Color.fromARGB(255, 69, 16, 143)
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagePath,
                height: 300,
              ),
              const SizedBox(height: 60),
              const Text(
                'Learn Flutter the fun way!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(height: 20),
              const OutlinedButton(
                onPressed: null,
                child: Text(
                  'Start Quiz',
                  style: TextStyle(
                    color: (Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
