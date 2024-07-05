import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/data/questions.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key});
  
  @override
  State<QuestionScreen> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<QuestionScreen>{
  @override
  
  Widget build(context)
  {
    final currentQuestion = questions[0];

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

            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  color: Colors.transparent,),),),
            
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    currentQuestion.text,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      ),
                  ),

                  const SizedBox(height: 30,),

                  ...currentQuestion.answers.map((answers) {
                    return AnswerButton(
                      answerText: answers, 
                      onTap: () {},
                      );
                  }),
                  // AnswerButton("one", () {},),
                  // AnswerButton("two", () {},),
                  // AnswerButton("three", () {},),
                  // AnswerButton("four", () {},),
                ],),
            ),
          ],
        )
        )
      );
  }
}