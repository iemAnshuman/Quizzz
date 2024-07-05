import 'package:flutter/material.dart';
import 'package:quiz/question_screen.dart';
//import 'package:quiz/questions.dart';
//import 'package:quiz/question_screen.dart';
//import 'package:quiz/quiz.dart';

class StartQuiz extends StatefulWidget{
  const StartQuiz(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  State<StartQuiz> createState(){
    return _StartQuiz();
  }
}

class _StartQuiz extends State<StartQuiz>{
  //_StartQuiz();

  @override
  Widget build(context) {

    // double buttonWidth = MediaQuery.of(context).size.width * 0.8;
    // double buttonHeight = MediaQuery.of(context).size.height * 0.08;

    return OutlinedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const QuestionScreen()),
        );
      },
      
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(Colors.white),
        shape: WidgetStateProperty.all(
          const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero),
        ),
        // minimumSize: WidgetStateProperty.all(Size(buttonWidth, buttonHeight)),
      ),
      icon: const Icon(Icons.android),
      label: const Text('Start Quiz'),
    );
  }
}
