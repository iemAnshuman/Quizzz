import 'package:flutter/material.dart';
import 'package:quiz/start_quiz_button.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),
                  const SizedBox(height: 150,),
                  const StartQuiz(),
                ],
              ),
            );
  }
}

