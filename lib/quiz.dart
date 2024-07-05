import 'package:flutter/material.dart';
import 'package:quiz/question_screen.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/result_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  final List<String> selectedAnswers = [];
  Widget? activeScreen;

  @override
  void initState(){
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen(){
      setState((){
        activeScreen = QuestionScreen(onSelectAnswer: chooseAnswer,);
      });
  }

  void chooseAnswer(answer)
  {
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length)
    {
      setState(() {
        activeScreen = ResultScreen(choosenAnswers: selectedAnswers,);
      });
    }
  }

  @override
  Widget build(constext){
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
              'assets/images/forest.jpeg',
              fit: BoxFit.cover,
              ),
            ),

            activeScreen!,
          ],
        )
        )
      );
  }
}