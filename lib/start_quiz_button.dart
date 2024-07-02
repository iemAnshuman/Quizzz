import 'package:flutter/material.dart';
// import 'package:quiz/quiz1.dart';

class StartQuiz extends StatefulWidget{
  const StartQuiz({super.key});

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
          MaterialPageRoute(builder: (context) => Quiz()),
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
