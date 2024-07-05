import 'package:flutter/material.dart';
//import 'package:quiz/question_screen.dart';
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

  @override
  Widget build(context) {

    return OutlinedButton.icon(
      onPressed: widget.switchScreen,
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(Colors.white),
        shape: WidgetStateProperty.all(
          const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero),
        ),
      ),
      icon: const Icon(Icons.android),
      label: const Text('Start Quiz'),
    );
  }
}
